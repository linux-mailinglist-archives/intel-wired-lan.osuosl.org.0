Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AE480A0F8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 11:31:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 003014221F;
	Fri,  8 Dec 2023 10:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 003014221F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702031477;
	bh=jhlJkCzX8qLf3ydsO+TpdljVqfpf3oafu3UBd+J+4fA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iGWBXIJgBCvbjFHbfvmk/LiESROstomR+pX+Dv4c0Wq9x6u9ZF8rr/xYEvMOocek/
	 Tol5J81d4/gjId0dGJST4OTnrlrhztX15afeLON+J7WNkF7daLk4mSk39ZRKdJRcZG
	 +ZrTpjnLbeXcAC/E3u/9xm1KMmaYzt3dcpvtHjYbheXn2hFD1qa8g14LpuK4FAyDFA
	 6IWsmMwl7uB0BwiBA2E9FbzqkhUIzgsFGWjHSyCS/0lDkJek3nKasjS3NBReoe+lb2
	 JV6gMH1/vF3JLvR3ChyhI+1kOQvNZWkXJhrjDDGqo2Wc7b0Wnd/XakbvEQ8AMhd6tj
	 C+AYQ62YlM59Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFQxkNiFL8No; Fri,  8 Dec 2023 10:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BED5C42064;
	Fri,  8 Dec 2023 10:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BED5C42064
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89BE31BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68E676F65E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68E676F65E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p62Lnyqq9Qpm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 10:31:05 +0000 (UTC)
X-Greylist: delayed 1651 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Dec 2023 10:31:05 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E1E76F541
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E1E76F541
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:31:04 +0000 (UTC)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id
 3B89VmOX007262; Fri, 8 Dec 2023 10:03:00 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3utd53tq94-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Dec 2023 10:03:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FoqqlGN4OpzQfDllF8ZRId522W1xdDg/OBUIqSh3JVfMTKw4bLnAwVuvw1eMdLOhXsvgsN6EpDRrbFSkJjMIh397ovLd+PAMzNVIvuvHpwoX67wdmhhXmoV45RsrIuOm4KOsRHG8CMnc7tqiOw5FLL5jlb+treVgPs44Y2++FA3IGO2naQUGv3D9l2UheFmWgPGgWgvB27GJrGzt/gt05rH6URUacTEf/A8Ukex0wGcSUpB3jmwJ8pohvKRWPiROU2z2+tKLC3PId23s0bTLPNRoB8aBgcMswvRVwBgIQ5XxEptQf8GXeX5WyMQ10E0OLjrGZEghV2qfx298ybbufw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hMf5IL2eelrubPWEAaK2coRNtCzhCYfzwOtZ/Er0OTU=;
 b=itftH6wff6eKf2GqTV5ZF7vaLHxihQNDyAZ5j6xFpnvQOyIs+nE9R2REl+I93sNKKqNEzWuy1qw3FVI8j4jrTAeWAVyHJlnh9c4GqhAKfxmfGU2kJ66naPV08Zgn3PqDBjKnixYCJ2/UXSCfijqvdGvVyTX1rznDEccJW6i87uasgwmChU1ll5+W0Nj9IRgT/FGa+txXnU4MUtxd79QRTZNbJPPJeFMQkMotmO3mKch5TwAzNQ4ViJsaYHixmCVxf2TXHnDv6ZeGQ+kTbuYAgC65FrNYuEXj8cm6Hs8MB2DummB+2eLx5OyvLl5BC0HP5otx0jrOArz4CqXKoTB3Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22)
 by PH8PR11MB6853.namprd11.prod.outlook.com (2603:10b6:510:22e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 10:02:56 +0000
Received: from DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::7c2e:5b95:fdc2:30e]) by DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::7c2e:5b95:fdc2:30e%3]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 10:02:55 +0000
From: ovidiu.panait@windriver.com
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Dec 2023 12:03:49 +0200
Message-Id: <20231208100349.2199641-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: VE1PR03CA0022.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::34) To DM4PR11MB5327.namprd11.prod.outlook.com
 (2603:10b6:5:392::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5327:EE_|PH8PR11MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: ca5cfdef-9271-44c8-de99-08dbf7d4d95c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ww6X4/x0WSBOpbjhz7XTi1CRWWgtCVLsujXMDv7WPyW4MCnb18SITWBcssbJYOTgN2ItPFQy8A75iiQC5F2GiBRVpvfP8gA/gnqy48b3+zgXzx1WsZIQ1Iok+J4YdkTC5BmQZssX9B7dhFPfLCWykw31MZzvdzcAShDVDUPK3708PCVJ4FLmoxqPtAhkkD28Fi2jIM+daJE/nnDYQZIhUxaE9d1qJh0M7rh1xzO30yj2Z0vd6av46ajKMKP9KClq8gWqdKyZSHRihz1gPXpp2hUpFdjyRW4+FXq92y6jmNIhZQdvP+uBfH+mLwMWD/jPxZC5SGYltDqGytkLA6LmyNu23ELMzuGBlbeto8X7M7o0D/5G1FL4fyUV200cqlnqenJPQatArDa4ENWvf05YXRAZEdxBW0MbdOVin2zFWNyWNtbTt0q3eNxWLZA7HkV1V3B2kaCb05HPiyOhEb9mhsxy4Uy+AAkClJynnBp7IA7TM3EhtuSjP6Sln4FgS5HDxmHVlPhTa4pp2BXVHXXHDaADZNY/YL+UXUaue3Xq3HiZAO+AF/j7mNJjGXv013hbvyWxn+c8VsNd0fdyQWT8dqyuVip1x4EZoLi7xO89/22SI1jAPDMo1ezuNhRiKrEV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5327.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(346002)(39850400004)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(52116002)(6506007)(26005)(6512007)(9686003)(316002)(4326008)(8676002)(38100700002)(6916009)(66946007)(66556008)(66476007)(8936002)(83380400001)(2616005)(1076003)(6666004)(6486002)(478600001)(5660300002)(36756003)(86362001)(41300700001)(38350700005)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9lII/wQplt7Y4fyW5V961+vu78zmb4HOUrkKpPvN6QrFQms1zHnV86wUvi38?=
 =?us-ascii?Q?59WdotGbgFNKW91iYFLrn0xb8zMY8CYIzqvwg1BMDnGqkSFlQZyq3t5a6r7J?=
 =?us-ascii?Q?5epJYNYkYABa4gA2B/q5ppn4WpBB8kZsZWHtR9LW0kgu8141FJqk7B0U7ErP?=
 =?us-ascii?Q?x0D979bcEJ/bOe+WlBkAH6dPELakn5UvpSMMb/IBTd+Hfi+Obmybg1PbtM9x?=
 =?us-ascii?Q?U4TIClnWk2KKIsvfpA3I4CzantuakATTa5IvloPHJsVL24hhR59+0fDlqpLt?=
 =?us-ascii?Q?TCfeKLc1ExhSEjLyWhou1Kd5djsYtu1XRH2dqQXHO3FDaM2McQEwSB8uSiQe?=
 =?us-ascii?Q?HP5sNWWy3E7AKb4ISu5p8GvLfIH4aTd0yqhTr84RmxrLJxRasOq1djTEE97S?=
 =?us-ascii?Q?YfTcU05VBSLZpCf9nWRTaIfbqvHAs+m78GBobwpmqpse3QeCwzX5eU8QV65G?=
 =?us-ascii?Q?oiVLSXjG9SwzFvo6J3BK33DKJEuB02cV3q1gOrB6uUeDerQcrmGL8ev+vX5R?=
 =?us-ascii?Q?aob66oqnlOyQPkcMSqb++mRCz8XdAhtHfKQYdv9W8DSnBnRoFTlL6Zy+P6hi?=
 =?us-ascii?Q?kSHH+kYDxF7KxcNl7asKfe0u9wtXLiL7irtKSolrTbW+Uy+mrO2mWu54REv3?=
 =?us-ascii?Q?g/EAw8+itOepa6Qvd11TBX8CXebvn6QT5OIQhmZuXUKQ6a6IAyPm15QAPeQl?=
 =?us-ascii?Q?yJBTxUD7J6vb5T76ReFeycjYaN/BUZ7Ap5rRgMTrGBxH57uWtNhg4ow4MMPf?=
 =?us-ascii?Q?NUCJhkQrOUQHJnxASg4Zvzn099EMpQix4go5bOgdSEaPJFrKSGI87ohABWHh?=
 =?us-ascii?Q?enwxg9deHHozlLda8kOwOYBLsceGZ0gcP7cC93qEw3J9t8tppBtWkdoke1Nz?=
 =?us-ascii?Q?WDGRN+lCTreBB0mUGT3D/MoS0jkczlxV5ZPaiayNA5zSW2SYiRjz0XpPbp9+?=
 =?us-ascii?Q?42pDqOXDzjo1KrBqrAU5/9Dw+XQgpJYDzN5aUrNuPmhHJWlN7G9keClN+Yg0?=
 =?us-ascii?Q?K+sxpezGY3a3z0C6UTnk7bkuWIIq+GazPhhHmeNJc8JgfDFg7jOX7MZUwRN8?=
 =?us-ascii?Q?SBZfWThGoxf3vvzE5mS7vN8ayWiwzVAZK3XfaWY3Fh7SyhEFECGiC673UvqY?=
 =?us-ascii?Q?dKZZRwNn37ivI8kM2V9isN3U6c4ENhC0KzyyYDWyDR+bRm/XksNJCsVhlgyC?=
 =?us-ascii?Q?7KLRH4V7hkS0eYsqnUsfsMZoNSpnLiULY8IyteWAbTFFkNtoOUmiH7iRcbVh?=
 =?us-ascii?Q?8pNwbVUbbJpqAa1wjTRZX/41VpEOirxR82Q3AA8oKOYIoC8a5Wj06s5foKau?=
 =?us-ascii?Q?h4t5x05x8Uh5VtMZ7aSL4nMbeZi+ciT8BbeWX8Vfy/9stNa97Ux+UdiQGSbE?=
 =?us-ascii?Q?2KKluFmzMucSUlYTBhtzdPUuGaQRFsjtFr2R8AzxhgtRq88H+IwuBXZ/l3rs?=
 =?us-ascii?Q?hY8VaU12khkGJNXIBqrxRmUIhckHEU2FQSE0DVmRJdfYTAAOuvtVdslgPNKj?=
 =?us-ascii?Q?0sJm9j4WgiZ+YnQkTIPkvAxMMV9eOJa+hyMfOjCptzNBFEtTasD7Jw7Je16i?=
 =?us-ascii?Q?TI2Mz1FkteqsEGJV8IMNSF5OJoQ7MnShyvNbn+vFXwD5Gd/ZW2jsC0PAajSI?=
 =?us-ascii?Q?Jg=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5cfdef-9271-44c8-de99-08dbf7d4d95c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5327.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 10:02:55.7786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LHdBk+kezY1LmXQpZ4JhU1+Q4dY22Z/T30MuG/4npb8Alye/Ks6/gh5iM3xw/e4eYLI3NaW00jzCW/E0BHaI4TIhPP3fvJyF/bFAUtKtJlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6853
X-Proofpoint-GUID: SM0d8Ab6UnFBzWuGctxNyQyGh32wDk7f
X-Proofpoint-ORIG-GUID: SM0d8Ab6UnFBzWuGctxNyQyGh32wDk7f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 bulkscore=0
 adultscore=0 mlxlogscore=692 malwarescore=0 suspectscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312080082
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriver.com; 
 h=from:to:cc:subject:date:message-id:content-transfer-encoding
 :content-type:mime-version; s=PPS06212021; bh=hMf5IL2eelrubPWEAa
 K2coRNtCzhCYfzwOtZ/Er0OTU=; b=SbX1upkzMxaxYg8OkqyLqHpNfy/RpEZBkj
 aSXA3Ws1dKT8ycp+mw58HvG8trWSPCYahr7JHD/vCz3Fgkd/RNnJn7pe7dglotYe
 aFFx8GmxdZDi01aHYiAX9NB8A8ruA2OkzYEhkVx631J2dwAxyMcHQqdv8Igw7Iok
 c/xce0HLt8lr2xYZp0DhDm3B0nRAh1z85/elDM04VTnVCukxCT0ba8kWsHtGwwve
 ch9hksr05wssUvE4njc7V2W/QEXNxiaJOws7uoAWRD5YwEw4eRn5aHDH79E+ViVv
 pcLJtLWNoe+kdXL3bvvLFjbpprEF7KIS991UUpGmnebD5ozVIoSg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=windriver.com header.i=@windriver.com
 header.a=rsa-sha256 header.s=PPS06212021 header.b=SbX1upkz
Subject: [Intel-wired-lan] [PATCH] ixgbe: report link state for VF devices
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
Cc: slawomirx.mrozowicz@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ovidiu Panait <ovidiu.panait@windriver.com>

The link state of VF devices can be controlled via "ip link set", but the
current state (auto/disabled) is not reported by "ip link show".

Update ixgbe_ndo_get_vf_config() to make this info available to userspace.

Fixes: 366fd1000995 ("ixgbe: add the ability for the PF to disable VF link state")
Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 9cfdfa8a4355..21b18d2f0d55 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -1849,5 +1849,6 @@ int ixgbe_ndo_get_vf_config(struct net_device *netdev,
 	ivi->spoofchk = adapter->vfinfo[vf].spoofchk_enabled;
 	ivi->rss_query_en = adapter->vfinfo[vf].rss_query_enabled;
 	ivi->trusted = adapter->vfinfo[vf].trusted;
+	ivi->linkstate = adapter->vfinfo[vf].link_state;
 	return 0;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
