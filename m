Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 066EB6C9483
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 15:36:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B6CF60B9B;
	Sun, 26 Mar 2023 13:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B6CF60B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679837759;
	bh=0M5OPp1UM2xbpIA6HWumv4OcAc2lG800R9fn0INRfq4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A/p9x7SbZi/+yTwYS5ENYmFIc1xypwG28k/5gWYJw7+8PjyqFrXoQ/tUk/Qeb7Jbc
	 mfxZ8sSmbUtNkDZxEwI8Qn1IPk1Q9Yeb8hYCC389d+JNjf6EfzFe6Wh5FDGHd7KFhr
	 NkGE9ad0k3PgVDns3FAc8qSNG5z8W/wCx74tdqVDCeYsabvaLtKC9U5+k8AeC1LNwx
	 Zjilio/qtRdoqF1R4olfTRt4STF4E8pphm42H0qzffjWQNS+TnFGaWqhmXGx0InYpi
	 De0IuC9C/lHk8YTECtSkSFk6HWhIX+3HOSzlKKGjhWLtvwxIesflMgJgety/bt9n37
	 zNT3YJVpmrG/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iT1Hfj4ccIKP; Sun, 26 Mar 2023 13:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEE9C60ABA;
	Sun, 26 Mar 2023 13:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEE9C60ABA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 607211BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 436A1410DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 436A1410DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVHb2OLHkj8h for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 13:35:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 653BB410D8
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2094.outbound.protection.outlook.com [40.107.92.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 653BB410D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XiI8wPm6R1C6EIj+gnHlnnWyUZvfWF/OZRZLAWS/iF1P5dRkmn9uMWPx4Ym0teUXkFc5333f+Fh+y99JHEiQnbNpcLivzT286h71e+ermYi65FuhW8u3N/OA7LjqcOzXMbj48EeA4deEkspzdXgTIRDdeA99xDbsIhdHt1xlnYeB68eqVUuRoHJ4WcurDXse16lhQwcq8/j4U9EORrDi/YWM9bhM6gdZcEYVUYle5U1b1i77YKjPUO9vXbejKysxxAN9DwTlaqHCH7eWBLcqxoiclfsRE5b8Ui5SvyeXbrMvSTvzADyxwE7zZAtWEeGBLTgFzSB2fH0txKy6Ipsqyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLfTPk+GIHzSQpisfSnZ/I5ZkODskFD1yfwB+urHx+8=;
 b=MFV+jLgThokVzuCZrtPqlhqX9Kw/hzi1YI6kC0xrVrvVD+vsOr4N3p9hsyZw/EAYeAgJagqae3MBn1cb6M3k01aPthhux0bE8zTx1X2vbwsO6Snwt5CjPGwC6LHaIj/LFw76ZZh4a5LVREBRO6HkH2ExsFfycogQcjkR61ZT11DqOCqMUoBkWiWM8tMosnx9ls7Ycfk5Izo0jqJYm8C4/gqdIuAxbXsbUs+NIXDVA3OO/df/BT8WvVnn8XFKjuAhM5zWcK83nvOepUBHmtFOPBxPIw5O3qC7XOEjhKm4HmywgVzR+yuO24NJp96q4yE6CIkNQvM/51v9jT9SX0MAcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB4428.namprd13.prod.outlook.com (2603:10b6:610:65::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Sun, 26 Mar
 2023 13:35:50 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%4]) with mapi id 15.20.6222.028; Sun, 26 Mar 2023
 13:35:50 +0000
Date: Sun, 26 Mar 2023 15:35:43 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <ZCBKL3Hi3tGYyw9v@corigine.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-4-piotr.raczynski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230323122440.3419214-4-piotr.raczynski@intel.com>
X-ClientProxiedBy: AM4PR0202CA0022.eurprd02.prod.outlook.com
 (2603:10a6:200:89::32) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: d42f70a7-c412-452f-fb1d-08db2dff0394
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uRibtisMAns0QLUymJRodyrg2uMMdTLYYgrXb9TIHWzHlTWd6lyfySYEEdHAH5RY/cnxdUS7FHx5TM9fWGEFdxaHfkcLgOd/AfEE35n3JKgMVEQnF2nEzA2ytA1OQb1Zi2Rh01wH7Ob0zAr35JXtxAWh9YgrnuTSfRTDe3EIBuySgErvhx9zg69AdkCz08y6YNqMBEy9vhloYnW/QcueQI3/CKFlg8KKyYMDkgjAvu/1Oe1bDLyWGmXjLkBWCaoVU4azmOZdNtiEslBSE37xrXPf8D4TjrF6dISs3INLNXfE/Cp18RcDkcJWop1LrZNffNUUAxrpOvWjmJsmpZW4Had51JEHQ8YeU11MC8nJPfoufNVCUULgC5AS6oTk/F4cDNp7fky8juK+jqJ3LDCMbv0zvJ5Y1Tr+DgwyrB6gT9ADHvGowLX0hJC9E3s91gL5cJGTRfwRm6J6f2NNvG2op9BBwnbSBt+dMgUryoXZqbP5i7ywoFgKZ6G3/20q0SCnANX0zSk1HeCK4lZgWUpHAk6LmAfskG1vL/YO2KEUDymdYB/FRvIcPVSrbuL4QR+l
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(366004)(39830400003)(346002)(451199021)(186003)(6486002)(316002)(6506007)(6512007)(6916009)(4326008)(66476007)(66946007)(8676002)(66556008)(41300700001)(478600001)(6666004)(2616005)(4744005)(8936002)(5660300002)(7416002)(44832011)(2906002)(83380400001)(86362001)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UKUaahDw2TfL/pUGs5TVnCwCwc5cmnTyTz5x/r7vt6I6HRO2WWHsI0dDnged?=
 =?us-ascii?Q?SnO3Xrory+4A5b1v6WdQtdG3V6S+wrq4Z5dr42bLQ2lS0QrjvFPvRyd0b7Yu?=
 =?us-ascii?Q?lKuXY1reoqfsb6fSwt990aP50nhBF/bHb/qVFm4iCGYFITf6vR6lHVSpQ3kL?=
 =?us-ascii?Q?UK8QFhIMiSOrTssqJcXdMe3X3onHJJBYQpSTLc/XZ7fw+Fb1oraJz0oIuF+f?=
 =?us-ascii?Q?xEgAB+vVNptgchyLto/ReeGGz1J+wUNwyRCoNFBGTxyEr7SIf9o+lxpxXf9v?=
 =?us-ascii?Q?Iet2G+mtXpsz1sugD14q6/F6ImrwL8MLJ4SJff1F1l1RoFQ2rmx83R3Hl6Jf?=
 =?us-ascii?Q?jrlJtyQTskG9LQoxssw3v4197dWkRBbV5RYBSMub0IWCsQwWqVDCyAQOVHsG?=
 =?us-ascii?Q?hK0b2fu4w0gR8Dsrf92qtOztrgD0xN+14q2DoFkKRsBVYWyfVYQFMurqBqbz?=
 =?us-ascii?Q?1kFC+S0Ut9+CtjCjcFF1lrL6KnOO7nAqx6bGZNVQhr8KsgKrXdA6zVxPY5i1?=
 =?us-ascii?Q?Qm8otNaYg4ZQ9tWOqlB/nIv0X59bhZj8vQKu8fgEBihqtpKyentdRC6XnxtW?=
 =?us-ascii?Q?OsDVMz0XTOzIStLmgydf0XdZnesWHYqSjDBrPuYgeULpNCBrILAmXgNmHNFO?=
 =?us-ascii?Q?oh5jMMv6H5U/AQikL/K9I64ZElKSbLXBY6qdMis2TTHV97xfYj0iCLIAm6BF?=
 =?us-ascii?Q?ytCDSAJgxxGTGPOUoU+FvBm5a+HETmu6vYMfucLoNsanRhIZmaB9HJRDA0dw?=
 =?us-ascii?Q?IKFhV335tZdxMy+wKNzHqKjdXixhwK93p/OsgT7E1NdV3WNP/hsn0ejAAvWL?=
 =?us-ascii?Q?p3HOS7aW+O+y7mdFl5KDHnxQfGUNKyrTxG/oeyd/C7NraepTNp9ImrngmIPO?=
 =?us-ascii?Q?q3vZ4rptWO6mxKja67PxKAqK4Y7CU20OjKTKXCXs+4IraleLt2wNg9jSS3kO?=
 =?us-ascii?Q?8bm9+oQ5rNctmjgZ9xK80XBbocxs3j/lUcRYPR3uh3pSjF0znNil+TvkMLnn?=
 =?us-ascii?Q?4wzGFTzn/27p0KfW8O8Xs13OeQkrEu/w7zU/KCmAIlFQldSaPuWA0sgf3gdx?=
 =?us-ascii?Q?2DwvEBChRY8CMQepF87woRzGAiRUjtZEo3ci5BRMYrrCcPQBK/e3jJ2nwanW?=
 =?us-ascii?Q?Okw7Jzp7I8iMWJ9BvkYyXIe+OC3QFww1pNgach9wQp6iw2NM5r0ZfNBCPLnW?=
 =?us-ascii?Q?ALzdRLBLpOQ6lsVfiDjWNER2hvEhRr7hUhbTzIfCIrNLkT8bjUECI82w5nyy?=
 =?us-ascii?Q?zFIxa1+CjNdjunAGl5RS4G43l5S0gDRl9MG7DOIM0qwNse6nzAL1zqPBKIUF?=
 =?us-ascii?Q?qDKmlidLFJpL61rEaaY0jaBzC8pTF51Dnc+IM5APRSJ2XO2qGYdWjvQfkOCV?=
 =?us-ascii?Q?j1xgurTskD0ZNcKfoW2TOXcn8Jd7wvrLWK5viABlHH3RqOOSplk2p6EOmMBj?=
 =?us-ascii?Q?4os0RvPGNrIocOY7gVBotFyKuEqksapSegwuPkSarCGC4HZ+JQPtOtar9ckE?=
 =?us-ascii?Q?CwaYG7FXOZOieqTwY6TGU29T6Uro+9RYL1vSY7SDyK24aQnA11hP0mKRHWC3?=
 =?us-ascii?Q?iJuoRIUu2gr373F86m6qlYuY/bA89cCGjt7aoVEq0dCE9WSOfuCyC7sHqFUl?=
 =?us-ascii?Q?Z4LC4jsAixeC28KTiTtOsaLCNVySPTG0d6fHr3kAiRpZzCN2sZP0uOEyGCfZ?=
 =?us-ascii?Q?sbzopg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d42f70a7-c412-452f-fb1d-08db2dff0394
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 13:35:50.5187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ykaK3+z5jVTDU8uj6nP/IhsUBGe/AaoFacATZAvZrjo48urKZWEdIBNXi3NfnOyjXdMPGWix7wJMKq1IBC1R1yjJKdaQTtl1b5MlkUhKvRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB4428
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HLfTPk+GIHzSQpisfSnZ/I5ZkODskFD1yfwB+urHx+8=;
 b=A9uYhbeSpPlUd3oMav8G8GdDpq4oCfkHilhHEnTP+E/e9HqxoJ3GtaLkloahG5UNPx8zBGJRM8LPcioa2r504ogGcd/22JhcemnoPNcj4AQtUc76Wkx4Mny6MG8HrovTs9nXeJpxd1Brzj/ab3QSxkwTN6x4bqnmohTnFdII/nw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=A9uYhbeS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/8] ice: use preferred
 MSIX allocation api
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 23, 2023 at 01:24:35PM +0100, Piotr Raczynski wrote:
> Move away from using pci_enable_msix_range/pci_disable_msix and use
> pci_alloc_irq_vectors/pci_free_irq_vectors instead.
> 
> As a result stop tracking msix_entries since with newer API entries are
> handled by MSIX core. However, due to current design of communication
> with RDMA driver which accesses ice_pf::msix_entries directly, keep
> using the array just for RDMA driver use.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
