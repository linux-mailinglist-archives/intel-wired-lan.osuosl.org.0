Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1268A4E287F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 14:57:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8194A60ED5;
	Mon, 21 Mar 2022 13:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qhkpL1jac1Co; Mon, 21 Mar 2022 13:57:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F0CD60B52;
	Mon, 21 Mar 2022 13:57:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BEB6C1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Mar 2022 04:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B0AD40139
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Mar 2022 04:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=vivo0.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zJdEgmjzQ8yP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Mar 2022 04:24:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01on2111.outbound.protection.outlook.com [40.107.215.111])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26045402E1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Mar 2022 04:24:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJm/x9xCRaFvpCzwfnKPJmKhfoN0knOqxzutVydzRdcfgDJ8XUKx1rOg9dOUOT0ZAUutjbhVohQ9ORSOU+aiSeBuh2VV0xhdHcP/XwR42YdiNCVDfRAE/IZw9ESX2i01opHavXmTpitZRX3CVwqHpRUnfykKntQ4CEe/mK7e1hLFADHfQzDkFGX9tkxt9cjrLKQoOvbL6Mi0mdXQfW1Swx23Y15zZHfy8s8335YdY9JO43FZYjVhxCdVjMXBtj1JrgxPnIgv5Bi+bEyaUfidNk7uz1D9umpDorGnWr8gtd1/OiEst9rPRIVePRTTCOUsrG0GQxdmNMpNf3BC4BJbAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pr1hRYHusNwJFDSF7oZf2N2TsBf8uoBbZLc6YDSMSPc=;
 b=hTJ0IzdqhEjatCl4H3AtrcrzGFuod3lizHVGZ++rZYjiJXnOzMegAxiZNgFdTVi+g37SD2OV2jHrMhVutaA57X7EYO0a1YdVzb/SpoFp6GWqkYYMPXBtftawj3ciw1PoJWIYx/Mt6p4a0+/2xX9wMrwTEt17Cgfzm1T++jcxW2k1K1rofiRMyp61cJXI/RqXsQeDegBVdsrZ4TxdE3qxRpa1twCKFazzRaI0aclk3uF1+BoAwcAEFZ6qw2s+MDrVhKWv7Mn4/pNY4o48Tawv1X9+JEEwlnL2xPhgAUEX5jMG16II8QD3DpkKoimsSqvZyyTKB6PLQ/ngkELnkZQ1/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo0.onmicrosoft.com; 
 s=selector2-vivo0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pr1hRYHusNwJFDSF7oZf2N2TsBf8uoBbZLc6YDSMSPc=;
 b=Sqj/nfi49rnzEoInYgRUoT05NyC2oWoR8iu9lK9SO/ngNlmv0Bh/PNihPn+/W9lLRcgU1d8h7IC0VynTlDnXTh0FZgNz8GGrsCeP+WoND5s+XPHCde//FPAa9KX2D/47xcdYumY2ZHMqerPWH1ZicYkCO7i09sSi/ebiRnSy30E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com (2603:1096:4:78::19) by
 TYZPR06MB5147.apcprd06.prod.outlook.com (2603:1096:400:1c1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Sat, 19 Mar
 2022 04:24:18 +0000
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::9d3f:ff3b:1948:d732]) by SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::9d3f:ff3b:1948:d732%4]) with mapi id 15.20.5081.017; Sat, 19 Mar 2022
 04:24:17 +0000
Date: Sat, 19 Mar 2022 12:24:14 +0800
From: Wan Jiabing <wanjiabing@vivo.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <YjVa7rJx7TuIo4gm@myhostname>
References: <20220318094629.526321-1-wanjiabing@vivo.com>
 <8822dfa2-bdb8-fceb-e920-94afb50881e8@intel.com>
Content-Type: multipart/mixed; boundary="+du2xvKkY8mMwSr8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8822dfa2-bdb8-fceb-e920-94afb50881e8@intel.com>
X-ClientProxiedBy: HK2PR03CA0064.apcprd03.prod.outlook.com
 (2603:1096:202:17::34) To SG2PR06MB3367.apcprd06.prod.outlook.com
 (2603:1096:4:78::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6097a341-5275-4bed-8280-08da09605429
X-MS-TrafficTypeDiagnostic: TYZPR06MB5147:EE_
X-Microsoft-Antispam-PRVS: <TYZPR06MB51474C016A3ACA406F94D2C6AB149@TYZPR06MB5147.apcprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qWjn9clr9vWMeEDU7k14KiWqmEf44IureVAVCMH+SnlugIBTLW5I66iAHnGEewsa6FtcnrH5ZQdvsyIeqbxnhzRmtT6MvMC5k9Bjh83E4b+Imi1NDY2Xnho+cZDqPKJWDraOom0/nm4jHWcgZp8ql7r6uVPpTravp+3xmXzkzPs60/lo/JPhTSjk+RhVhQmOVYizpzF8ohvcUDsav+ExUUxGd9L/ycOgjTkLc11CzMx27Ow99ZAkRJaOw6hG4q566x1AbJt55xLQlKJAyj5yxfU/SrE2nTT4aW6xv+7uFOLs52NRsKMo1/CWfV+ZDYqFl/RzdgGSd5XEtqY1zamAd+BhWtULkyBkEiIp3x2yOWwn8306FBHImewu/lDDGzotRWXcnYEMbIQdlwD9/DAcM49cT8PJ7JWAcV+ERt2piWdo6yF4pCt/8yBjZyhpJ3/DWUg1PHvZgf5ZCqgBlt9kG68O1SbQjePz95N/fWFmXdEuRttm126n+wGBpg1Jl6il5Cps5U+YsuLVVqPfQiCQcK3dHOU3X+ft+pFTy6uT9uyhTcj2t0P/GHyzJi1QcX8ifgeGOO/fi4TW3pxwOHEjUT22GswehnAmB0EWOlDbvL2yWYS4mkIaNqzRz+0LdoJUNiRrqLG1c85atKrDLWL+8t1WfjqZFyh1Ko592RLTcjpYICBjnNMNHWST6gfXUVdvXSWymOxdVbNn71zoBA5UC+w9ATFh+sRgtB4do62EdMg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SG2PR06MB3367.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(186003)(26005)(9686003)(6512007)(33964004)(2906002)(53546011)(52116002)(6506007)(44144004)(33716001)(83380400001)(66556008)(54906003)(38100700002)(38350700002)(6486002)(316002)(6916009)(86362001)(235185007)(508600001)(5660300002)(8936002)(6666004)(4326008)(66476007)(66946007)(8676002)(2700100001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnVwMlM5UTduSkN5dER3YWllSGd6VjhlZHBhYXpodVJpN1hPaEU3VDQzWFdi?=
 =?utf-8?B?dDA4czNBbWFzMWRyNU5sZWlncTloWjhLZC9ybllnR3NramEvQ2VRdEFRREI1?=
 =?utf-8?B?V3J3QzVsVnNLVHJ0OFJ1MExja2hDTElHOGg1b0kwQWYxcHc5ZGtZWDUrWlRV?=
 =?utf-8?B?aDVMZko4RXpEU0hkMGowRzdJTElBOUZVVXE3QUU3Y0FrUVd4cGdQbGNtTVZ1?=
 =?utf-8?B?b2pPdmJOY05qVUJmRWVBbTRIUk96aEVSdTBFUFlpeUJmMnZJYjRxMVovK2lU?=
 =?utf-8?B?Z283aXh1NXpDTEJNRXYwUjc4MUNYVXhpKzZPVjlIenpyay9zcjM4TFVFOStZ?=
 =?utf-8?B?ZVhTVmNXYzdtWDd3Wnp2MCtHMlB6SzZtTVVQSnoxbHVJOTFjbTk0TkVsK0Jq?=
 =?utf-8?B?N2RjckNLbjFVS0JiNko1aTVVcUUwUjA3ak9SOWp1UGFwQ25laytPb2M0TXcv?=
 =?utf-8?B?NVJBTXpsTm1aZDNJR0JIYjBDeUw3eW0wYStqWFB4VTU5c2RZL0x6YTRmUCtu?=
 =?utf-8?B?UHUzVkRZUDFhOTE0TkhNakVGL3dkUHk3cHRvbDRrUVlyR1N2c0JITlZXUDkw?=
 =?utf-8?B?S0RFWEpKVUwyb2Vnd3JKSkx1bFFSU2U4T0tpVTI1ai9wamRFcURIYWs2bHJN?=
 =?utf-8?B?QjQ5MlNkSjZMc0FBQ3RSUlZ3WEdMdndIMjFBUldwdGlRRUtFWWtQQ0xTTGZ3?=
 =?utf-8?B?aHNGdFpGcFl5dHc2UXQyUUpSS2dKbDRJQm1BVHBPS09WclM1di9sVlZlSk82?=
 =?utf-8?B?WUdVcDl4d3FBWGhxSUNaL0ZUcG9pN1ZxclF3T2NncEZRMzNScU51ZlNlRmc2?=
 =?utf-8?B?eERya3ZnZTVGNUpaODJSM3hyNWdvZ3RXblAvcVpnWVBEOHNTb21LN2pjOGY1?=
 =?utf-8?B?NTJ0eEQyUXZJQ2FNN2NQeFVPdlF3eEN2NjdMYU5YNXpTdTFpYytZTGdOU1NH?=
 =?utf-8?B?S1pHTDhhUGJUSTdXVmtEV3lEU01ZKzRhMXpORVU4djNyQWxnL25SN1V5WlNC?=
 =?utf-8?B?bWNQNnZxdEpJMTlYMiswdGtCYi9OMHFFQ1NBWlcrc0dXSGpSMVVTT29vTUYy?=
 =?utf-8?B?VDE1UURXOFlmSjRsS3VjOEF3WnpxakdxV3RHdmN1ZVdXZ3JSZ1hrcXZuQzlG?=
 =?utf-8?B?RkZPNDUyeHBWUlo3QkN0Z05EdU9CVnVXU1hqS1Z4TUxxQmREc0F5S1k3UGwv?=
 =?utf-8?B?ekxnZlpkcFJpS0U0Y0F6aGFoTS9Qek00NkRVNDFpY2ErcmgxSUxLaGR1L29x?=
 =?utf-8?B?VENacHQzZGh5ZnAzL2RTRjJDZU1tNGRWRkVJeVBXRHRqUUVobkZFUU0rRCtQ?=
 =?utf-8?B?WnA2VGJGeENuV1JPOXhhazNQaVRKMHhrcERqVnVQSDJ2cE10ODZQY2lJYVY3?=
 =?utf-8?B?UFhDb1k1VTJwVVBtSWI5Znh1bFNkK2wwZWFNaGxBZzBnaFppbFBiSG1lcmdW?=
 =?utf-8?B?TkFCNmNHclFwWGYyajBjU000SzJPV0M4dzhHajJUVkZITDhPMGRzU0ZtUXhy?=
 =?utf-8?B?SGNTTnBXK293SVlrTWtnVjhGNFJLKzRjUDJzWmdtZm9NVTk3WGNzOUhUMUlB?=
 =?utf-8?B?S1hBa1E2UXlLOTk4TGJVUnNiQWNTTi8wNVJvVjU1NXhkSnR6MmpJT2xVRWx0?=
 =?utf-8?B?NlYyZXRYVDlaSHRQcEpXUW9EMzZCRm9BakpkRVlqWFlySnpMbkdOL1J5UFFx?=
 =?utf-8?B?WldLbEw0KytxWkZQVDJ6OUxYTjdZd1l5N0Joay9qd3JTSEt2UmxCUXMycnFm?=
 =?utf-8?B?MHV5TVZoMGtXZHdReTRsdXl0SUUwYVdFV0pxWFgzaUFwSFpCWEowUDVZYUJx?=
 =?utf-8?B?aDVNTFdFb0F2V2pJUldacEp4SkEzM0hlemxCS3VQdUp1RTFiaSsyUThxaVRD?=
 =?utf-8?B?czl3bFI0bjQ1QVVtMUJVQUlMSnRiT1dyVytCRlEyWnMrai95SmNoRnFUZEs1?=
 =?utf-8?Q?ssS96RuZDAEiPa8tEnYOZxZpwKiB6g4v?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6097a341-5275-4bed-8280-08da09605429
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3367.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2022 04:24:16.5019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0MKQ9GqObEAWAmNaeKaVLZ3ndgqEGM3SpAoGvSxSLukZARZdyPxfgFsu2nLC5aMBEawdCs/47oCTjYYywF3p5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB5147
X-Mailman-Approved-At: Mon, 21 Mar 2022 13:56:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ice: use min() to make code cleaner
 in ice_gnss
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--+du2xvKkY8mMwSr8
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Mar 18, 2022 at 01:19:26PM -0700, Tony Nguyen wrote:
> 
> On 3/18/2022 2:46 AM, Wan Jiabing wrote:
> > Fix the following coccicheck warning:
> > ./drivers/net/ethernet/intel/ice/ice_gnss.c:79:26-27: WARNING opportunity for min()
> > 
> > Use min() to make code cleaner.
> > 
> > Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> 
> There are build issues with this patch:
> 
> In file included from ./include/linux/kernel.h:26,
>                  from drivers/net/ethernet/intel/ice/ice.h:9,
>                  from drivers/net/ethernet/intel/ice/ice_gnss.c:4:
> drivers/net/ethernet/intel/ice/ice_gnss.c: In function ‘ice_gnss_read’:
> ./include/linux/minmax.h:20:35: error: comparison of distinct pointer types
> lacks a cast [-Werror]
>    20 |         (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
>       |                                   ^~
> ./include/linux/minmax.h:26:18: note: in expansion of macro ‘__typecheck’
>    26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
>       |                  ^~~~~~~~~~~
> ./include/linux/minmax.h:36:31: note: in expansion of macro ‘__safe_cmp’
>    36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>       |                               ^~~~~~~~~~
> ./include/linux/minmax.h:45:25: note: in expansion of macro ‘__careful_cmp’
>    45 | #define min(x, y)       __careful_cmp(x, y, <)
>       |                         ^~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_gnss.c:79:30: note: in expansion of macro
> ‘min’
>    79 |                 bytes_read = min(bytes_left, ICE_MAX_I2C_DATA_SIZE);
>       |                              ^~~
> cc1: all warnings being treated as errors
> 

Yes, sorry for the warning.

After check minmax.h, it's better to use min_t and there are no warnings.

Please check the new patch, thanks!

Wan Jiabing

--+du2xvKkY8mMwSr8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-ice-use-min_t-to-make-code-cleaner-in-ice_gnss.patch"

From 43118a4f14393816054a41e4861106cdb623b3d9 Mon Sep 17 00:00:00 2001
From: Wan Jiabing <wanjiabing@vivo.com>
Date: Sat, 19 Mar 2022 12:01:29 +0800
Subject: [PATCH] ice: use min_t() to make code cleaner in ice_gnss

Fix the following coccicheck warning:
./drivers/net/ethernet/intel/ice/ice_gnss.c:79:26-27: WARNING opportunity for min()

Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 35579cf4283f..85ceb7018781 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -76,8 +76,7 @@ static void ice_gnss_read(struct kthread_work *work)
 	for (i = 0; i < data_len; i += bytes_read) {
 		u16 bytes_left = data_len - i;
 
-		bytes_read = bytes_left < ICE_MAX_I2C_DATA_SIZE ? bytes_left :
-					  ICE_MAX_I2C_DATA_SIZE;
+		bytes_read = min_t(u8, bytes_left, ICE_MAX_I2C_DATA_SIZE);
 
 		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
 				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
-- 
2.35.1


--+du2xvKkY8mMwSr8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--+du2xvKkY8mMwSr8--
