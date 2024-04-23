Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463FB8ADD4C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 08:04:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4959140120;
	Tue, 23 Apr 2024 06:04:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A48yz8ytrTX3; Tue, 23 Apr 2024 06:04:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0710340439
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713852279;
	bh=hWivHp8fUmJwKM80JZQxGE2RsUMC3HO9S5StsBMmxjI=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iHa1CnGLL/qQyqE/but70jqv84oGomhWVafmOH59pBjDxU6c+d1JfNw/tsSlgzABn
	 Yt1wbBSgg3yb89oahMvNtqGfZd1BO4F6EBmhhvfGpkCnAh1ktQDBWE6vT2VNw/977H
	 5Vj38GE8rHs+jhk7nhFnIi9LzgfbFnmCjZHi6ngRJAmLkNbNb45JGcifNBO7XfLqFq
	 wNApWzppom3gSlg1AWszdCD5Ni/VnRLHRzuPOKs3ksRFgbaCgLe88LYU3pO+FEO7Q8
	 RZELh8l2CUwVah9u7dj2s9XEHafBoEX1M4pD6dJeJtKolcKOQZaQ21O+mlM+AEtD36
	 sWTkmWOAwN+jA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0710340439;
	Tue, 23 Apr 2024 06:04:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4331BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23DEB6066B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:04:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tks_BDKnGSh1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 06:04:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.86;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 252A060667
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 252A060667
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2086.outbound.protection.outlook.com [40.107.94.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 252A060667
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:04:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGSOiSvHUSk0XC6z6LAykscpWwsvT8FPlPKvJtw2fb21CkgIAkdq2WOA45wLZmmhDrr+VTiHL/RqtZyooIPJzQgdmL5hBhrhKgeog/PNxTTAueS5nZBsDd5Zy3K5ol0Z76m7sZgS0kvljm5eLImhjRNXwtNIjEXHroquC+4sSVPA9IANqu7jaNzNhz6eYbntMihgFhX7EirnJQyKCMwrkALvOqYF+S4sAENmgLnsYcJfxPKUkaFElg+hgf2ylkzP9TINjFQzkKfTuMRfE981JlFcLM61lmIrogN32maoKi/Bq6chdy3qPxO9gdzITl3YwpoDuw86OmjOGbXTf3Utfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hWivHp8fUmJwKM80JZQxGE2RsUMC3HO9S5StsBMmxjI=;
 b=XMmwK+ZCjEKnIZWpPXKvBIXZvc9CaFz5GfulaglEGjdHNRyleAoNRVDd9P4TKAqi5x5d1hpagn/wxS924Tc34c15F+E3qMfCzNtApbVjaCRBC6ck120AUv0aYuvlupJNeqyIFOa3/MimUitsQl59NX4V3rzdlsX1SkUcHoMdcuG1r8s+ZsDcLliK0YT0RkKbqOo8uhsXmwaeH5XKs+9gz/DjMQSA7ONuympCs7sYrtOopvqF9qzHO5m1qJL56FDBt2cD3O/sxGvkz1V9nlyxvWgZzbA10XeN90CaDDGDzFuKcpdsj1ALzdCPjakGTzGFjz7WPOdpvCJ7ZS+1G2hKgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by MN0PR12MB6053.namprd12.prod.outlook.com (2603:10b6:208:3cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 23 Apr
 2024 06:04:30 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 06:04:30 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <87v84ectez.fsf@nvidia.com>
 <f4696921-caf3-4873-b5ca-0b4f6a993cac@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Mon, 22 Apr 2024 22:57:08 -0700
In-reply-to: <f4696921-caf3-4873-b5ca-0b4f6a993cac@intel.com>
Message-ID: <87le54pqc2.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BY3PR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::7) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|MN0PR12MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ec242bd-3083-4692-8b34-08dc635b3d84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QAeWBs1Pu8dju8kS5lRqixRUMlFgWWpW0Pb74ppGSNH1M4Hhrza+coPnnudv?=
 =?us-ascii?Q?QIGRQfSmzOCy1ElDYu3aWLKGoeIhscYZO8UdBmN8VIVpfs9vHQWrh4D6ic31?=
 =?us-ascii?Q?/gVlfJJnz3d5sHBH5dCb4T6TYiXq/DNrB2GK5+ki6TNAu0JkM2uDASNqbbkE?=
 =?us-ascii?Q?MdDhDEVCcJnwZ1cLNyiSeJOmTTHrcLuu0oOWRvTkE8oAVl3koKweBKE0JlaT?=
 =?us-ascii?Q?UZ/YDHSVKGK+sALeg4SojnUB70W3lAitXr7mc0TOI3T+A73K/o+arrdHBqV/?=
 =?us-ascii?Q?JU62nt68hEr8mMoXQPsktuU0IzTDsv6APuoQcuftAJxmTLdP/iJxI6IYP7LD?=
 =?us-ascii?Q?LZIuuCzl7rw8DGt2j0uRv1feZ76FK719U7Bi90OKPYY/gD40YOHom93XhJSx?=
 =?us-ascii?Q?nFwj4umag/zZJxxAmGu5cU1uDCeNhDnAyTv1+Ko2WCGWSM2yQmk/OlTkGYxL?=
 =?us-ascii?Q?uFwT8sl51noJiOiJ0JLy5Sh6iRFqNWN2rvd8L8l4zYllcuOA3kdsdTGoXn4V?=
 =?us-ascii?Q?R+fnwtkKoezANx6Vl2I3ARQ2Nj8O8sD5dxmxIXaQ+KaDkBtchfkjTtv8ln6E?=
 =?us-ascii?Q?Oxn4WedVXeK3hYpdiaYsAjKLP1DVgJZ4Y+8yvTyaRRFwy0bfO0gjErgWRTu/?=
 =?us-ascii?Q?RhKy0MGsV+wMkRTSeSL/fforcPoK1tCyI0n7vHJNafJWGrkSfLybIZBs+d1K?=
 =?us-ascii?Q?GWLQu5xvx2ePfr7PI6wWyIXUUbkhQqH9MFiuhsUdVjMzy8OW8DHC7b6ttrk5?=
 =?us-ascii?Q?ivlBKzgOzTMpaf/xzLXtIm1zOd6YaURjKQP50EpVWxvRpIv3quI0VQTkceXY?=
 =?us-ascii?Q?DO7m3UGmK7UZLmvGvV2CFcV19Mhf/hHOLH+p4qhNefAkUgcSOwpNzEwqzy2B?=
 =?us-ascii?Q?hifmaSg4iQiMUFbJJa0Dyj4/8aQbDah1WQy3D6FhR4G+Mqp85c62hUpKXA7b?=
 =?us-ascii?Q?hcn6wQ2bBvlh3Y6g9jDPs6KdNrYZhEvwb1nIaYptm4ubTHbv4bOZDz3BxHNN?=
 =?us-ascii?Q?SEkEB9cVTj3oPvbEcX1K08q97WZkXsiwRRXScOYMXhVmfcwqnISYerRZg+Ky?=
 =?us-ascii?Q?gANKERi/IeRqmLd41C434ewToAVdDDB+Ef/5XEKg5kA4AezECAFSHjdckxbe?=
 =?us-ascii?Q?FU83Ro/y7qUyMNisBahh4zFVJaCPWipSjeSmT6IKWYR7YbW0WEFkFkDtwk6j?=
 =?us-ascii?Q?G86p1KJQ45cH6rRCj+LXSOnx2ZSgxW+Y0rRwV8kbitED9XrWsyKfzAs/zn89?=
 =?us-ascii?Q?FUw4LoAuWHhD5srXNVyPRXVJkyDJREv7zG0aOiY6Ig=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sRsv1/RdwzfWhbwK4UNKjvzWh6BX2RUnN0KcpT6Ub6mQIGqykstMeBSDrxIr?=
 =?us-ascii?Q?tQwIrQ3jiI/0q0QhW/49qkdCkCdOuuNoREhZm4DvsomIBRhUrgik2fcAwnhS?=
 =?us-ascii?Q?xUDR4Jo+0tF5nz/N4WbgmdgJ1oDV526O3KMLn+G99WWkZS06aF55mGAiMix1?=
 =?us-ascii?Q?3bdd9D8bHbqIFHdObJnriqchAUzvR9Wr7LCS+9tjfkgOCKpW68w8sNbtI3Jq?=
 =?us-ascii?Q?aUEyFY/948od3uNxoXGib3xLYhG2oV8lN/Ay3e/gM5bRcn4PTWW1FVmGF7by?=
 =?us-ascii?Q?8+cKMJTmo+FO6gFCJBZG/gM5ET6aHNgrTYVmow8hmSGhrGGnhFGomFL6Mr+y?=
 =?us-ascii?Q?ZCe6tQP3KBWXaIiSYbpai/WKhsv/tu0Oy6FHufsYNljc/AX7uPFdRiQuUkK6?=
 =?us-ascii?Q?nSXnMemiVWgUrVi2jj6A4T6W1utf/IYFzz8FsHqunC90Wzxm6LG+nC/ppooa?=
 =?us-ascii?Q?eM+C0tr16lp8mRoeQShVRG/9VN9mpaQWZkBAEDMvvWmUFlRD22t4m10KzpO6?=
 =?us-ascii?Q?EHJUPoSbEGSRLWxZ6IRj8YtfpgpaIIwT9OEoPupIgOlRtXjVAJFpodsefhOw?=
 =?us-ascii?Q?4dyAf/+UmsSSL3vwF+i+h7uOa2OTKKWoTfiAtf+ytRH9I6dTqHcS/6fNzWtg?=
 =?us-ascii?Q?m5ynXbvoDXq1TbkSqrpjEyP9WMhuuKdiGmFf09A7vb/IcHPSlJLRYOYFye0W?=
 =?us-ascii?Q?pA0gQPBMd7tOhWPdUufn8DaBpMs/sJCwyGw6ciMmOPtynHGg24ohU0umWg0S?=
 =?us-ascii?Q?3YEniZ5M5m3nvv8ONI49Rzx+2ZOWQ/TQbFBDkqd5Q5kJ+LarQ/0Xr35hE4wQ?=
 =?us-ascii?Q?PKSZS0hct1s07LO5fQd94e6SBOa2S8lTo9TYYloF95UipRC2IRktz69y/3Yj?=
 =?us-ascii?Q?TL0yQfjHKBMI/oRGQPYj7+uMBdnCeQyJzGkbqm7JOXMH0yI8KNrMeh7erko+?=
 =?us-ascii?Q?3UOEKrJv0XjAeXttajZ2HvsYGZWmDnc/Fex7NInw2iiu8WYgbQoPeDCFlNvr?=
 =?us-ascii?Q?Vykfi9Mv3shYF+/fjwUbqcomcDNwee64KK/uOHv1p+6U+MG8bTpisLvrPnm8?=
 =?us-ascii?Q?e76CaS5KCeTn20KETE8VE+WdSYwmUG8wj1UQKaSw4GI4v+doPVdcPzUKzkXt?=
 =?us-ascii?Q?AkSYdBH3obJ9ujcNDCt+jdxxTe5vLpSykWWFMnGzC/svWH/zDTnF/dL9nz/+?=
 =?us-ascii?Q?DyUGI5bqnK+CUreUkynRiCPFeyJHQnYVaAKEddaA2GAZDVCYYkBHxUOpIM7A?=
 =?us-ascii?Q?2ZDTlGyn5RF5hTXT4hGgm/3Lty4eL5PrftqgFBl5BmbGVdi1HnFnbj5ecXK9?=
 =?us-ascii?Q?V9EmeQKjCg6XU6irriw+s1TGdLA+0nYKR0kjxiItrgp4s84Yl9O5uLxPBDC4?=
 =?us-ascii?Q?pVbzFaxxsXcPUkLW8s6UFkuPIWPB4+Dc5hhqzsPFG095me/sdiOTIAA6cYHk?=
 =?us-ascii?Q?uQlGJ4hSTZvsToi/5tKg54DLrGcC1Gcpg4RTQ970EYWgiJj9aRPhgBAeg19l?=
 =?us-ascii?Q?sQ8VUh0/fH1edmjdOTshuZvYHmxxwUZjzZs4Jms3fMaY/TLveK4vnpxKTMdf?=
 =?us-ascii?Q?cfUa3keve+IzAmcwCtraLJ8v88L8cZefASFQRqhJXLw6BFDP4Aaf+WcmPify?=
 =?us-ascii?Q?wQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ec242bd-3083-4692-8b34-08dc635b3d84
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 06:04:30.6199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 97RhmtbSZEJI5jCA8q4l2WJHpPUt4Q+oGARYUPdsFV7nSWMmaX9hUsY14MhkQWFc9zT3g+JyAdsznHe65lxXhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6053
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hWivHp8fUmJwKM80JZQxGE2RsUMC3HO9S5StsBMmxjI=;
 b=QkKo+ht5kirlWLxP43G5Y8/B010F+LwdQFWfseRCUSXw7hhfKVZQBfdtNVGFa0qliVBA2F8ZWzYWk/RE/kdHp6qBetWT4dXcrkfnspVZK4AxLTnoMiBMrhqolET+1jHqx9vhhR7QmFDLgak+v7SNLjADzQWc2ZLXaMxpCXGwe/DLDDVFthbbDAWG6qcglIVHuNhqJJbWsYLu6BieDWmIWMZbFuBfmbkd9u++Jc87ZYUqZgcsLNOGKai0di07OkepVpZULEubS1W/zR019bZBo6ZMr/YaCmVc/K9nmN3R9ftSPtJ7+7nAHgMY2VAq6WJGbz5dubG+EVCKlMfxC8lpmg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=QkKo+ht5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Mon, 22 Apr, 2024 11:37:14 +0200 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> On 4/18/2024 10:19 PM, Rahul Rameshbabu wrote:
>> On Thu, 18 Apr, 2024 01:24:48 -0400 Mateusz Polchlopek
>> <mateusz.polchlopek@intel.com> wrote:
>>> Initially, during VF creation it registers the PTP clock in
>>> the system and negotiates with PF it's capabilities. In the
>>> meantime the PF enables the Flexible Descriptor for VF.
>>> Only this type of descriptor allows to receive Rx timestamps.
>>>
>>> Enabling virtual clock would be possible, though it would probably
>>> perform poorly due to the lack of direct time access.
>>>
>>> Enable timestamping should be done using SIOCSHWTSTAMP ioctl,
>>> e.g.
>>> hwstamp_ctl -i $VF -r 14
>>>
>>> In order to report the timestamps to userspace, the VF extends
>>> timestamp to 40b.
>>>
>>> To support this feature the flexible descriptors and PTP part
>>> in iavf driver have been introduced.
>>>
>>> ---
>> Just one general/cosmetic comment. It might make more sense for the
>> Reviewed-by: trailer to come after the Signed-off-by: trailer, since the
>> review happens after the patches have been written.
>> --
>> Thanks,
>> Rahul Rameshbabu
>
> Hmmm... I think that the Signed-off-by added by sender should be the
> last one on the list if there is Co-developed-by before.

Sorry, my bad, I should have expressed this better. On the first patch
for example.

My expectation for the trailer order would have been the following.

  Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
  Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
  Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

instead of

  Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
  Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
  Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

I think for the ones with Co-developed-by:, you are right that the
ordering would be strange to re-arrange.

--
Thanks,

Rahul Rameshbabu

