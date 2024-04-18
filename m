Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEC38AA3D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0264D41570;
	Thu, 18 Apr 2024 20:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8LOEG85qJS08; Thu, 18 Apr 2024 20:08:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25697409BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470912;
	bh=InGHS8c0ZWYU7JEc+vTA8FiRJ4znUDyrEJOP24d/cx8=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OhvOgzgOFws8HdXlYqudYPT5pBTbUJCh4hPtQSkXSyXIMRhNmvTiVcuWLHGjOx3Jh
	 5Fjjd2+0RetvAzOVZtj4orcqh573JadUM9Ntuw0oIFSG46p3Yw4qjc+kCRaf55UzWQ
	 Rzk370pcRUfWLwYZjQF4SPtqEsAtKTg1Q/nRfh552PjRAYhC+XVdyvsGIkVZARXzLw
	 Vha1tBjU9QINwJyeIlGtokz8Etq02NoJozZ8MbcphW1AmC2peu3xFWUV3XYqxnKGE4
	 lqO/asUWDexiF/FJi7eIEJ5e6XeVYljOt9a35oBx4QV4uQj0GEvjSPQ/ulpnle2b+Q
	 82lFFGe2KW1Bg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25697409BA;
	Thu, 18 Apr 2024 20:08:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1141BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4593460A53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:08:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMYl-yBL7Fww for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 20:08:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.236.45;
 helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DE760608F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE760608F8
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2045.outbound.protection.outlook.com [40.107.236.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE760608F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:08:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FtgFl4PtxRX+iAGFoVywhk0UTZaRPSqoFo+PzUvghCvZ34qHM8GYD6cPHlL1cweqidgD+PiIXHQTNJWf11I+B3TSmevQdKOXk9OzgOLqHSN3z9BhIlZoglkechlO+PrLKks+mpbnO3O+wcpf90y5JyiDocqnwEhaZYtu0aKP2ntOzK6Idh82L8g1iv7jlpey3BRxkanj5W9kWxzq7YJc+jEgKTRW5RPnFn4hewnwzJc+xTsNAbawG8sn+JaUeRi0cC0VTH5To7qUR9mdb/ZEPIo+u8KeGw/MUYj8ooV3MCQ0okHwvHk3PFz8el99R3YCemAmx1Xz4VtrQT9Bt+4vnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InGHS8c0ZWYU7JEc+vTA8FiRJ4znUDyrEJOP24d/cx8=;
 b=DnVK9koVNXQYyVvqQkNDHRlL8It4jfZkm+8xf2V/6xS3Gu9YPFnujyD2AjvnEIgc6F0MgXjrWEtTobpFpYTTxjdCkSFEFB/+j7TgK4Iurw6aNxF8jEWonAUHO4tOeYWsVqp1GjR2ON/kwgouyTmyvOulPlOgaGVK8tKuho4KPLE2Z5xBnX5hQEj+hK43Z6uz5OIyYwbRfOE7nC651PutGhwUutc95i4VaecRC0MTx984uNFM6F2DAKjmiPdTB7vOBOKJqIvTsmF1RmaEUSNopV3pJLmx52+q1VmqeOpDa/0q3f1WEQ29Kc7CeMCnaQvC9G6RJo5BmLLfduhP/mMZWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY8PR12MB8193.namprd12.prod.outlook.com (2603:10b6:930:71::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.42; Thu, 18 Apr
 2024 20:07:58 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 20:07:58 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-11-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 13:07:35 -0700
In-reply-to: <20240418052500.50678-11-mateusz.polchlopek@intel.com>
Message-ID: <87bk66e8o2.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR21CA0014.namprd21.prod.outlook.com
 (2603:10b6:a03:114::24) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY8PR12MB8193:EE_
X-MS-Office365-Filtering-Correlation-Id: 558cbe11-f61a-4476-6a9e-08dc5fe33e29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g17szMspxt3uAeb5EaB1pG/MqrnxijY2OurYlsaOd/gNzxnGe15X5pnC/lkLnv5tLmcsrrQ6zrZq1kmb6/PEdLcoAnSWivwwv7yr7KiTnpOxNiNuTzVR04k2masNQ6ap327YQzWid/d0bj0kxm0zdCzK5GRiaOt84Tb3iDJo3FE8+iRJpQaTAeriXXb1O2vKqd+HV3suvtvnddygr+LrCZmYvFQ4Hc5FnNx3V4QSkVPx/JGokXA8IjllMS+b+V9R5DNogxsGIgQ3ZGq2PSiOW3p3T8Afq/D+8rLmmehzOwlpTxF658pcXHjfAHnvlwCC/JEDzBkL7+K52GnleTjx1cYbXGkbhN2r+LNd5HNY8WSK3sylB6z6VoWa0vjKDDreZyvUH358zmxasMpAR5k9A3HVlXRdkKVM6lpCekl98QIIOk1oPqOppgsmjNf6vWMqCB5JkUwR0BeV2nlmCunYWCb1CwFvlb4nZufWaVKSePAbqwn5Vkmh+mCn/BT4rQ/dToM1+08FrnbDVMgMiX1kdLG1Y25U5MrVsxZKryB2RSWgUVLAw5DqJgKbJpLLQJlx0fSk+sPoQX83aJF52YLBiQRN9MJIUorKu/CvFNyLDL9ZK4M3TkddyKpRMB9JDjfDHTyyEfOIgwgstQwMPkUkLlDvYo3mOTaRhwpdUl03n44=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cuLfOV49dpwWK8fTz6+Jw4eMvnRVBuih6/AMUzEZVQeTXp8Gu+IyvvIaJSxA?=
 =?us-ascii?Q?ma81YcXDjX8R1jCxW+ZKjRCuBmduEd5ZpNFuj1D3OXRD/J/4ssCMB73bTMY+?=
 =?us-ascii?Q?LlFss7kj089X1+8bLen+HzOKo/kwAhdxlnd/xEtghKAyj1MOxgXmHS9iuoCo?=
 =?us-ascii?Q?S7YJ8RgRNMVUXSSk6Yt7D2KbRm25S9w7EygLy4lxj5w53XX28Rtj9s+9D2sm?=
 =?us-ascii?Q?by5qvlSwAaXqok6mR1B83zmm3Afd/WPBLA2taZfpsEV23pu6ERBhbxvrJP4O?=
 =?us-ascii?Q?7PicVyVnPytuNHmJqZQpwTU2fTFwxaH4fhO1+VCR3Wb+T2E5CNAwTY4ooC4q?=
 =?us-ascii?Q?pBS1pdbV1dKHec6KPfxBioyDzVwTP7Pt3Wf6sIrqealuwhnqoKLxQsUIfI+J?=
 =?us-ascii?Q?FYpZbL5PgQrFOSQnwCVpGun5UmpE+9ZemXkwIaW9WIbGI53kbEFqG3vtZXgp?=
 =?us-ascii?Q?JaKkZNBnU9MudqHJ1Zz6AJhzdfNcH3GC6VNxxZ2dSSCtv+oHmsYagYQAx6zK?=
 =?us-ascii?Q?dYpLdQ24ibbfpKPR61Ut9YygSOCEofWMxR3PCG9ceRlH6j1dE5PzqwTP8M8x?=
 =?us-ascii?Q?XtHulIrXCgnP4Ufdj3YayF/plcP5zMAD89R8snRwqAgZC/8Uec3b9gzIP0SQ?=
 =?us-ascii?Q?vK1iIQHEtiA4wwG08eqoxnPKox/sZ+AbAAJkByWrlD+fLIVX2m2CqPgmm62a?=
 =?us-ascii?Q?xHZBR33amSHdqvFKoVuIYOM08bFjNzOC+4aWikz79lwmpPVsobPOK8K4bjJh?=
 =?us-ascii?Q?a4hxcDEnp/l7/wdOFfQAF/2ohuOHIO1zi5y47lwQ9rJ6uQcH5QjKNtY40GPR?=
 =?us-ascii?Q?oPskns4sYM/KU6cpu8fiYGF3Ztgt9zEL6Oij+LsjQDLOqUXze4XxjDB3fcj5?=
 =?us-ascii?Q?lZ95ErSWsXkm59MMbD/yX0ENLYOuBE00zjMcpqXkyzCDUB8GubKp/+1fRyhb?=
 =?us-ascii?Q?tDKgIb7wPCkcPy0+N6CKd5XI97dFIQyN2/fLh6+jCjz0W5cZHdhbV4uSgfM7?=
 =?us-ascii?Q?kVpHzic/iikC32a3/L53vijLfeYoRH3HjsYNjFCi1+EHfv5l9Zlj7i4SGko1?=
 =?us-ascii?Q?CE9a/Za18bTVC2aPLbAAqWwXvAW4ydXNr+GNJ/Tw6jKR6E/vLGt54TVV7I1G?=
 =?us-ascii?Q?ekqqbNmsbDstTZDqDbhc9jWCOM286QA1owJNU10ksyam0DnFBZUmOlJQdZ6l?=
 =?us-ascii?Q?K/ajXYECOHVsbsuTTylb4Nm9q5usTAM5r1wtyNbSUMpFWYGBwErHMnzP/wt9?=
 =?us-ascii?Q?89jSiYrbYbk34RIyvUwdn1w7HtEQNgMrWSqzVBDSvjID47zFvCCPq00E9REv?=
 =?us-ascii?Q?9L8mVB6OSs+KBjBNTt7tQGOyypduKKz0L19mrACAkEanX7y6bAiXiAkJmNGS?=
 =?us-ascii?Q?Vk6ACFzrJ2xsXGf8tPnwMICpw15Jw0pdAniQa9uepvCjsoPi3jw1qTbK16WZ?=
 =?us-ascii?Q?uRi54SYWcVkC889/p2wMXgzJOLhs1rZz7ID9cnu8v7pLbCC3RlEoPEKFjAKs?=
 =?us-ascii?Q?1NDjzjS6gDu4D8qOBEd/q5Q7Z3A2GjO98A1GaM/eo9AK6H9IBev0vsYBT3jV?=
 =?us-ascii?Q?6zwAUFAbRD+rBAuAt7ybQoRk41ms0fOaxs3Pt5OnDbiT20x1KovKFIg3Oz0e?=
 =?us-ascii?Q?FA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 558cbe11-f61a-4476-6a9e-08dc5fe33e29
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:07:58.5943 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UYFtp2ffasRdTlPILpNtKr804ZXXU1w+i7h3/Nj+bYE/F/CblIFjCkcItnJ8xJtqH/JUQsyoXMUQ06ICZSYOYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8193
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=InGHS8c0ZWYU7JEc+vTA8FiRJ4znUDyrEJOP24d/cx8=;
 b=h2MYvxyJdD5SCVAEtBi6WFWy9aCF64SGzj7mw+xDwPjv0qmI6TRCoR5dus/RkwoIAQVVkABXKsiVh9Nv6/dGx9Zkszp3pE+c0R3VJ9HNeR0nZHx6OZcssGkV+VSolPyulFRSJQ6k/75goD21jUM+6bN5DdmwfO54fOPPIVqDDlly4ODajMfU6CwFsAGeYrlN5NjuswH/ArRojszKEn5vbgmUx7nkbgC/qOGB4cnbt2P4hWv5KS3h3yV527xWyFchntZU9QFfm4za9j2EoOKqu8ilKHULSusUVpgZa5m7d6GIorHlX48sNRimYC1CBFmGsF8gk/eHfuqV+z1XqY1+Ow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=h2MYvxyJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 10/12] iavf: Implement
 checking DD desc field
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Thu, 18 Apr, 2024 01:24:58 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> Rx timestamping introduced in PF driver caused the need of refactoring
> the VF driver mechanism to check packet fields.
>
> The function to check errors in descriptor has been removed and from
> now only previously set struct fields are being checked. The field DD
> (descriptor done) needs to be checked at the very beginning, before
> extracting other fields.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
