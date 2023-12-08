Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E6F80A385
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 13:39:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F4D283E68;
	Fri,  8 Dec 2023 12:39:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F4D283E68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702039171;
	bh=RU6G/hAT/TdBXfKKqlN9T1rgzVUqQTiKmt+Ff0aL1Ks=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5a7kLEG94GNwG/dmXd7jIwc7Budydb+8333iWavLQ51jR7ra+KHxqpk2dt8RR3F3k
	 UGJAsmFB4fTa9ojWz6Gs6CZ2fWrMaVpsXZd7m2Di49PzFwDI5JGoee8v9FM7rOB6qC
	 lpgacmcUUfZspKZcdI3GdjZgjvq137xIzFNfdx6iPhTXtZ2BxFYSoRQ9o17hgg+Ab9
	 wxIW04yI0TuzQkOR8E4GwLx9kHHDLst9KP1EXStCVCXVI4np+KnzQatri59phYz3Mk
	 jnRA+SFju6fQpY9swmtZGgIQgxvJG16KNlqYBZpoZGTYm4dCRE8S4ZBtQcnhFAuEs6
	 20gQsbbI5LvDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3A830_gsrBXH; Fri,  8 Dec 2023 12:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F2B983E5E;
	Fri,  8 Dec 2023 12:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F2B983E5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 978511BF20F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 12:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E7CE4224C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 12:39:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E7CE4224C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X-YcijffB4OG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 12:39:23 +0000 (UTC)
X-Greylist: delayed 2267 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Dec 2023 12:39:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64E0941E5B
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64E0941E5B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 12:39:23 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id
 3B86OtcR022036; Fri, 8 Dec 2023 04:01:20 -0800
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3utd2r2s6k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Dec 2023 04:01:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKsbRbMe0HbEAcC/ZI2Q5Wq0LRdkloAkI1G0dGh+3Sps0IfJfka1g5YBrN8zPICHqhr9bbTgPcWoXXGvoAbOQVSKdgeSdZaKYysyEdek5XbjU2cjtrFIwRiBrR645K+pVHCDneep85FzMTqF3UyzPgVXjMS4+gnGUZVnLdyO4oR7VidrFkI2O4zZGQ7Mf184d4R6Lzbq5qUoWSWUFYgJG1HjQ+Rc2YV0lwXflMJ55hHvKM8XoHUknRTbClrU908WDtGbdReoyUTOwjS4W8j7JBwcsNx+3gnqouRfKVfF/rzvQbRXjgmBGx7gZFdzlgg24SJ/FqJHyqISl39CUYbcVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LailMwDWrI6NvfoJj1yM+mJ9ltZ8a/pBZdjBngaGqCM=;
 b=JqPq8uINGGcykkwy7rZfpMxkwqw8HRPQYJd8HL24whYPdSCagh9NIPKRGDGuH1mF6ApzmTthKfUnmzm5tt8r857OOW6IglweTwrkBORiRV/NvzTHZObGcOvkUq9rPcvwAe3U3SiEy/s+kK6agUU/Qq9qQGPOHNFtw97rW+ooly38BfeeZhOmbrC0RkrPRoo0qfuWuzn93K9ldyxyv2dGUh1xg2klRHwU4dfsQX/4qAdRhHFHD009tsKCNP1LcT1OlMcu4iQt+lgUIeiOVfQfrsfPw6oHPlWZqsqYsigO2H3/9raYjPFhYYslDCjdP6c1Y2R553zxJb1lePe4PxwITQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22)
 by MN6PR11MB8243.namprd11.prod.outlook.com (2603:10b6:208:46e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 12:01:15 +0000
Received: from DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::7c2e:5b95:fdc2:30e]) by DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::7c2e:5b95:fdc2:30e%3]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 12:01:14 +0000
From: ovidiu.panait@windriver.com
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Dec 2023 14:00:57 +0200
Message-Id: <20231208120057.2199983-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: VI1P195CA0089.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::42) To DM4PR11MB5327.namprd11.prod.outlook.com
 (2603:10b6:5:392::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5327:EE_|MN6PR11MB8243:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e7f272e-2611-4718-0686-08dbf7e560ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RJfVkpMcI5QD7EW7bkqcn2nKz5Oo+B15DpbyWAdCWB3lz+8FrbIh4+d+tl97E4cvuNymdZUDb5KgHrw+e8ej2QN1QXpWyh7aObKl3Ed7KFMHstcSKYE6e03Fh6CwuzIghldEwlc9LEm/lUzc5mDkgQDowHdjwx8oDI44v/Dt+GZepUDDwlCRgB6jyr+2yQK5C0uKtgO2XWkj0/FRvEAtFXfOrEBYKY01xrzUmrujqVIcrj6EEYqTK5lGROTDutcd66PGpVjIFYrYOqRC1cWz/eNozC+G2AZiYgPsgI7SRX53CEM5jltXJ+JY3K2aw7T+SYTHjewpoy0zXJNxoHJgJlQ3ogmzbwvWaBZyJJ1Sfupmah+M51o/Bv7/zqcXYPRq5sN6iyIZ6v30lTM8KvKBxK/dGQqefMWPC4fwf+Z5+2ayNEbef3erPFCgjcI1wyOvn8fXxAPJMKb9dNf9XndH+M2NRxoJBpEFCPXnPuD4Mt4kFAAoDp81+OSlfm3+/i64fIxBPy/tzJuoxxS1iPhvz+pF2QToC1aXGiLY3VJsC6P164Oa8m4/cgaX8T0jNmJDsSxFE1VyhGIKhZkwg4NyudkA7trLF/1hvvOhQtdNgVU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5327.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39850400004)(346002)(376002)(366004)(396003)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(52116002)(6666004)(6506007)(9686003)(1076003)(6512007)(316002)(86362001)(8676002)(8936002)(66476007)(66946007)(6916009)(66556008)(4326008)(83380400001)(966005)(2616005)(26005)(6486002)(478600001)(38100700002)(2906002)(5660300002)(36756003)(38350700005)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y7CTr4nYAZ5yWwv9Ei8uk7JVb1ZfPn2DDdXve5dS60UPXGfLLiwejQZ5Xu3N?=
 =?us-ascii?Q?cFH+ovItV1b6WxsO6MSyPRGF/NBU0+MqIvo+Qs+HQ1LH94QkotNTb4ohxZL6?=
 =?us-ascii?Q?hTdzKuu+Y9kK+/GL5l7rfRDF9BK9duYk406l9Ww8IsVclX6uzE+XQJCBMhz/?=
 =?us-ascii?Q?PCs+leb0+NROnToDkFDB+hcVsH80EwqzV5MY6T/UdQWoAJE1N/ME779aTogW?=
 =?us-ascii?Q?ZWCrv1ewAjt27+z5cYO4GBodgy0CBaZj1RwmJrpFHWwlSIIh702kHxbl83GF?=
 =?us-ascii?Q?aTYXhUkREub33XupMcP41EpGiKvt1LUGC0CBB1AcVfoEVtB5x7UDSQzqLIzw?=
 =?us-ascii?Q?8VNBWIUxNy0kF6V7H5bok5icVfta/mS2pPRQcykgybAT99jqvg3dig34EzEO?=
 =?us-ascii?Q?Ix9Y7u0fNSjlLaxj0vOZ2xd9XJFGalGaQixcgNjd0N7oMSk9hwlZ8r9ktEXO?=
 =?us-ascii?Q?317TnG1wfzyvNdsmnioOoMpg29kUkuzChNgLOqFoAMPiNKvHm+8S4MuqScSo?=
 =?us-ascii?Q?ax/D/Dm2M0iU9oh1zGSp6rV+bVityDwzNbx6en9InUoSNNRwFtfC+2Dv0669?=
 =?us-ascii?Q?ndCGCX5YeINloHBkXzWl3c8FXgiqjktjLcI12I1dITeV5mcHK0rlsBk+nLPY?=
 =?us-ascii?Q?S4Gc5DTde0e8+QM4QdZr2kKIf03m9nWseTQd/ObtLX8TAzLXBJBle0pLs+yi?=
 =?us-ascii?Q?bW34IVmhDGNHaP5lRsHpvt/heukadV9O5OrL9UN53kv3KEwodwmOH+dYx3qO?=
 =?us-ascii?Q?3vbdzSsjrSeT2/2Sq7l3LYmT6uy8RBLL64ihtPyi1fbfXJhSCXAKD+CBwmCo?=
 =?us-ascii?Q?qiZ/g/rtVtN4WF6IWb3t3ytHkGUjUcaWP339AO7FTYbHacKmeNL0XXmQazG6?=
 =?us-ascii?Q?TuNs8Tlne+6olZ14pXXvYXMfJMTtby66rp+IeNEo0hZm6J+ZWP3Zc3a1VrCZ?=
 =?us-ascii?Q?vu1JH3/zupvfjOjWVyU52WgVZy0e/zMlza/gHGJVWSXO8zQe8qoni6ncqA8d?=
 =?us-ascii?Q?JCFmGx4+pGfNtkobgOqoJ8wsX1qVVGArV62+l5RjT8+KjFoowl4K3ROKZzYy?=
 =?us-ascii?Q?BK+ICbAfnTFDnnnE4UV+p6x3gEGFrqLCyJFc18gyrb+ibWoJ/pf7ymcTm7d4?=
 =?us-ascii?Q?fnvqb63Fq54t1sQmjmNXp6xpvDYPKdkhjShAG2vMZKc2jN20nsGR24qfIbGg?=
 =?us-ascii?Q?bOo+ZgusTXQcWXeAt7PI8ER97IfVIV7BfMpksRNisJ8kwO6JSV80eMwCfxm6?=
 =?us-ascii?Q?ML3kODG9Y/63+KpBeEVpKxHUx8WuCwTah2w8ISCMEyPH6+Lt6hq6J54o6YW/?=
 =?us-ascii?Q?+5gryWMbjAX+hGNrUq/K3jC2+FxkjkLUd9f+kjfJBqMOSngRENj65TJSZJsW?=
 =?us-ascii?Q?22L6oToPyqyqb+AX9wOg7qmbkp7lNGGGZ72qrDFdxPDu5SrlbrZVXNbhgHw1?=
 =?us-ascii?Q?X4GXOzd4OlKDsVVxu3nHinshdgIgID4SMMkcWhgftS0uvVbt7IwkJ5xUGiQy?=
 =?us-ascii?Q?FXdZeU7kmkg6fG1ceWjhKQUWn9q8/q3aPZgyl9w/cE25cgG1gp3zYVLawk/Q?=
 =?us-ascii?Q?+lcnH3K7HTgVOvyFEGtRT5uAOrewGlTSJoPfEWymS0OQo1TBGiEhQXu8Xjqx?=
 =?us-ascii?Q?xg=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7f272e-2611-4718-0686-08dbf7e560ac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5327.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 12:01:14.7616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uhqf27cXd3WqVvx2uyRdaRP+ZC/xyCEE+UP/CVWDLaimjNVcYO8y0QpFPAvpQQEF4QAZRBYM1TSOZlt2mKEdFtaDvQyKfT8zJ4DKbCKHvbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8243
X-Proofpoint-ORIG-GUID: SOPvSzF1atcFjldr37fkyhhCfwOOSNHV
X-Proofpoint-GUID: SOPvSzF1atcFjldr37fkyhhCfwOOSNHV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0
 priorityscore=1501 clxscore=1011 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=684
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312080100
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriver.com; 
 h=from:to:cc:subject:date:message-id:content-transfer-encoding
 :content-type:mime-version; s=PPS06212021; bh=LailMwDWrI6NvfoJj1
 yM+mJ9ltZ8a/pBZdjBngaGqCM=; b=sqQ4uoP6hoW9YZrEGHVg9etuMo2myjAMeF
 KlMsGHd0JdpoY53y9vuu5Qmbx9WJcxQPrE7rmxXw9JTUheRJKwiWmYapx8y09P+g
 td61EdBv/lhHt+2H4mtjgEavY4nWRZtV4ER0V29yTgrw3tCMyTTMHqBf+YmlJ4Vw
 jqqEtNAL6mtM9MzUN6Rj2UtX1YcljYx7+lzhaYOm6mU6Cd6G0JeMGzxHXvPWcI1+
 7/2QKL4ogGJVqPZoF8GYkE/L+Ar2CO7PQTOwiYWVne4H9EwHpns9Y91GgjUfZraL
 GHOzu7vJsCwlNq3Pjr65LFjoHAV1qyVNvx7J1oSc30mD4j9E5NnA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=windriver.com header.i=@windriver.com
 header.a=rsa-sha256 header.s=PPS06212021 header.b=sqQ4uoP6
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: report link state for
 VF devices
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
Cc: slawomirx.mrozowicz@intel.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ovidiu Panait <ovidiu.panait@windriver.com>

The link state of VF devices can be controlled via "ip link set", but the
current state (auto/disabled) is not reported by "ip link show".

Update ixgbe_ndo_get_vf_config() to make this info available to userspace.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
v2 changes:
- remove Fixes: tag and add Reviewed-by: tag from Przemek

v1: https://lore.kernel.org/intel-wired-lan/a2ac9348-8bd9-c9ec-59cf-38f24b8a304d@intel.com/T/

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
