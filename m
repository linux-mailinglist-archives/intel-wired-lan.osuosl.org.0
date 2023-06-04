Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B27947218D4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 19:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47BC182FE4;
	Sun,  4 Jun 2023 17:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47BC182FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685899876;
	bh=T55eH3nAtI9zfE9ColOI9Z7n/kZwkSEGtZufjfCU5to=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3bAal8eNxiTCWTak0woLTqKqxxpJjXLzVe7kjLXKPKKLPDVcjVf3fzwLYv0fx6raf
	 HqtDzvbHhUkg3qOJoh1knFPnlRokXHIK3glxEvjJ8/LvAz/za6f8oECIJ7FC/RI3v5
	 D6mve2X+U5KcH9neMfUrw4HChlkJLRo4SptlJMTq2AtootcJ4Iq++h/mlJP4bMEWOi
	 YY7DY8GF9peymT2j/DAwHNxALLG5gt6OHzuhgeujKZIa1p/evGu0SMyPrOsBPtbHWs
	 1wSptfZDJ2V2yXXqiMdbP74mX9LUElVqwsjVilnEi7te+yP/E3Qenyx9UZO0z1Fu13
	 EZG9C6vJa+Qcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2BsqB4pzszFm; Sun,  4 Jun 2023 17:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1582783C4D;
	Sun,  4 Jun 2023 17:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1582783C4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3A631BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 17:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8316F612D2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 17:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8316F612D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WH5xEKIma9WD for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 17:31:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF1AE612B4
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2100.outbound.protection.outlook.com [40.107.237.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF1AE612B4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 17:31:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKxGdqEbztfh/Rk1oDkFq1Eqp/8AyKPU3E8zMCwAYdVhlNzttVHaUqiHk9sr2wbZt30cWVSOXg2eEn1rw9T63kjdoE3Y4aypA4er27zaAGP7FbuWPqmTh6TcsbUAuECGKRc1075lM8aV5tamZVbNHGUDtNE2VQFxQeZqTpAxsv3ldDc/D29bA7Td8FG97Xkoi2c9R3OKO/xmIb+BXCbR0W0JgJlK+cayupOkyGHafHQaqPl6RdnJiVKrvDcdqTfrhvWuy7G6SqXFr4t+OqBu7Zfr2Bn7epc39mCfqMyGZiWeXXl9m+IqMpi/lVq7nVSv/Udtc3QMgD5sXcP6BYItLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eqbJQ/dVLe/rpbAFhtDTIfoWaIpii2QaeRxdOeX5z2g=;
 b=B1YJcHw+YFD2/sugyK0fpm11U74k2EfWLNkA3RQWnzBba56F5bAPbKBEcGxyC+QPAqJLdp26ulD+N+xZFJTJHxy7o89ZPQ1DJZUs6ogpJKsRe2mO8NeT41L1zUbLVdGEIlZmhLxNanyKzudiUWAyPAzW85K8arMS4DB2IFrcHAlLsQDbLm5iCniNEycuUgZVhSxaSj0mjghw7C/+TYICBJFLvmB4pywctNLuCKqLftpnbyM4wrfmPmut3NffMCtxyMBaSAU/f82nkbaLwXSEu2iuN7sRyQ07ltt63dq25Fcy7OUearGfdTn2wru3iumx2+iq6O7VagNSNWGQFYXrfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB3895.namprd13.prod.outlook.com (2603:10b6:610:94::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Sun, 4 Jun
 2023 17:31:06 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 17:31:06 +0000
Date: Sun, 4 Jun 2023 19:31:00 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHzKVJZ4TFb1F7pZ@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-13-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-13-wojciech.drewek@intel.com>
X-ClientProxiedBy: AM0PR02CA0189.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::26) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB3895:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a2a08bc-581c-4399-0582-08db65217a78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QoIQD6D30huveVCOFWTD/pJoP2odT5DxpYVLm3c09tkIuzSlbJ3MvZlMnZ6WlWltNPB7FbgZ9N72bx9fjwaOuKdJtRsvOKL0nyY8nCbUlkitz4RRVRUiJFiL3z8y0yi0egdgF0LFOIGABDXtH+kfNMvaezNVRg6Bww5YTITEzEtM3N/Pyos4GBL7Skpa4fa6k7mnWdlgnEgxdEOzQMraOtqDwN7syz+XbFotsIQdgTz6Wgenjl6QuldzFu1F5XwrFZ++adP8NXx8/VyeU8fH5pXE7grYyRmQQyyt5Sovn2wTQ3NFPK5NcXhXo2Tw9i9LKoEcTAnAUCpCUPX01Xt26k/wkaM4vkMPszSVbOUN2iJa/LltdfVHRlLTiwT5jq3UU1SE6AEHwr4de7hD0i5uMC41Z08EfLDqzqoF6blRfTeOvifZssILOa0DreNZIloKQH+6JlhG0bzssjKb21r1STZdTBF7gpqimUd7ueftGMxGwv0D7qvc10FUjkYvIxKxYLyznWiH8Fpn585YxBNFxmx/RtEQajbWglAwUtclKRqfnsLpW5u37u1Xf58gfKQhYjJxjueG7cBNhi2x9CkEEg1S5h/Ld6VeYWJAAjiJcH4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(376002)(366004)(39830400003)(136003)(346002)(451199021)(7416002)(44832011)(6506007)(6512007)(83380400001)(36756003)(186003)(2906002)(316002)(5660300002)(86362001)(41300700001)(8936002)(8676002)(4744005)(2616005)(6916009)(6666004)(38100700002)(66556008)(66946007)(66476007)(4326008)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5XTnbT3//Z5CP+ykEaQFIdPNxmchZYpb9h1vooqoFpTe7kRWbJNAN64fLXGI?=
 =?us-ascii?Q?kHICo5s1DkNU5I0x3unUALCLW4EickvDxvntamTyh/mK9hhNQUVA1YuQcUPB?=
 =?us-ascii?Q?wZuwtbhZk6AaZ4Bn0+pahcs63VdAGG44GX0Cw+43TnH3rGPuifaLpj3E5W64?=
 =?us-ascii?Q?Y2j7kseEg1XiWF+IsHbL9zLKkARoWXKvJEgrYU+Cl2AwSMs4nAEgN1wYDgMT?=
 =?us-ascii?Q?HcOysAvAszzDMe5SahMX3Zwa25xzbGoXmlGw/5OnFEPmj0ZpTXhOb1SneWnP?=
 =?us-ascii?Q?BEIJOMNSt7JCn5u7n7d+a41w0Twdl0qt6nfZpfFoPO/I9lJ6JkxqKrSMsaVS?=
 =?us-ascii?Q?h1jAFCqviY4Focguf5u2EEyhLHda5JVByAWG/MD/dKzF2FgAhQFkWTnXp1sy?=
 =?us-ascii?Q?nn9MJk2Sd57sbROAZLHwqmmnHvr1Xg+e7c8uMIEBSqwVGPLCeQxXEnIJrMdN?=
 =?us-ascii?Q?QVFNYtV4okYbRa6L5gcpi2LPZ7R6CQZkoaH1/1CMx0qEoYLMEl/0GiP5ovDP?=
 =?us-ascii?Q?fRg1QfEvPQ+PA9/7Yro8UM40i/eKIDL3CyZv8OD0Ug6E3Ua8Tf0Psfj002Zq?=
 =?us-ascii?Q?y9jM6F6QdZXhmgfr6Vj46Ly97B59VPWMhFov7UVmnB2hzVURzsMfQvqtWJeb?=
 =?us-ascii?Q?L+O6+ht6tpaOqVZjro1S+rhRFyGeU2z8oE//xlq+/MMaKg87TvXBJmZ3EmGC?=
 =?us-ascii?Q?S5+/EtwwU4e1LNpWgYKOaWZsEYKOyO4g4TYYleq1lbKYvDvfQUPe9lt6pGlH?=
 =?us-ascii?Q?kxCBgFM2GNKBwVSK7xJy2w83UmzM3+4Dy62BGpUdfNZqmgoIw+AGY+ukBDIx?=
 =?us-ascii?Q?f0J1zFutN379MEaPZaZ8qsh557ib32v2ipIKoegVv+zbxShEoHOaP+Gp7qhr?=
 =?us-ascii?Q?JK4QweWuVnX8qZXZlk1w9lR/48bcl59VGdyLW7Z4rVQBdsrOV2Q9hGU0f4ei?=
 =?us-ascii?Q?OCTC4jkMmv/ZpENVGPgWqa+EwIb0T5au5275HKL1nf5LKGHns99zvaaUP2Ci?=
 =?us-ascii?Q?LBwht9ow930ATTkoI65IapSIyd/iLGR63OdZYz0ruLigIUEIxS/JKFU98q2S?=
 =?us-ascii?Q?1BSSkl9eUFvfG5cXTAOhN2vHxoOFRGejSrLO5fbh/gL1e/cD58LFWwIS2476?=
 =?us-ascii?Q?eUK9wRpKXDhNyWUZ277hfHez+DgPJZyyr8PNkmAUE+JuOto9C5hg6Ihd4dh2?=
 =?us-ascii?Q?P1OOP7EZVvB00/9TjFOuZkb9nxKnQ6EbPViODeXwMgUwEjCNtyhtdGwIVEPJ?=
 =?us-ascii?Q?Qs9aF89jKLQwoAPcmj/98dY7CXa5SDaJyRTdOaJDTeZPGgM5NMCNRlF9Xboe?=
 =?us-ascii?Q?+MDEdmv6gsvAmjfzYjcmiRUyPtkOD1TaZYiovcGNr6SD7u4AORuc7M3pSHgx?=
 =?us-ascii?Q?pSHYdWsj8Jvu9lfPHKQe0RvhWK1hi/B7Ebd5gub5Ee4q0ArZl0r7r3iHxzDn?=
 =?us-ascii?Q?3UmnaQAkP/9/oefEIhAuvvZaqxbqoMOgFmiKYMB52E9dkVrLMH4jW0fCux9q?=
 =?us-ascii?Q?v+GshD1od7RQPDViKa3sSCuv9g/4s8TIAVrM5MJzw5hp+jVxgNgwZ0BIn1nt?=
 =?us-ascii?Q?I3DS3VaqYhjyGsmgE4ELmoxCaLEDuW8ia++h/cCd6M3048ZO8VThsWm7+8Qo?=
 =?us-ascii?Q?NjNsrBr1GIpDaCQeWZ5YfO99K79UjJmchJthhjiYNOKFFtwuZEkOzlGDdIrk?=
 =?us-ascii?Q?MBxmZw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a2a08bc-581c-4399-0582-08db65217a78
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 17:31:06.7138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CtbgNVWtl/NmJrSeyd4q7SY77FQSqJMFlxhRE5XmfEtmAqzn0S5iUnwhJvb8nuVj02FqcthllxWtiscLpZ4cTx2gk/aXkRSnsJKC6NQs1jo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3895
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqbJQ/dVLe/rpbAFhtDTIfoWaIpii2QaeRxdOeX5z2g=;
 b=EXJlavjUsTAd5xG8DZaWeA5cMokIlST3yIw2BENTJtHMCIu5WkXmYKImI8rHC/88/lnLSNLhs7YKNN5GvavYj0BK4q+IWdwx9rWZNaXDLuy78qYI/jcxxS/piU4vVcbJVj6yAVAZoEeu+SN9PkPREvt7mi2o4106MvygVdlzYXY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=EXJlavjU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 12/13] ice: implement
 static version of ageing
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 24, 2023 at 02:21:20PM +0200, Wojciech Drewek wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove fdb entries always when ageing time expired.
> 
> Allow user to set ageing time using port object attribute.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
