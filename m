Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E7C72F7C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 10:26:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74B24813E4;
	Wed, 14 Jun 2023 08:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74B24813E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686731184;
	bh=7pL2B53QD3MxFL4QfAZzlTtdY4NEjB6GoxnMXKR3upE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wCbT79Zx54Q1QI7c/4GlJ9o0N5v7k8S3woENPmtLS9l20x+l7scEfRvZwC38JKZB3
	 1HnSntC65P/pE6J5HIPprIKDpH6/DKsR+K7FCNUrJu4tIv18ERJrUGaFG9S32jc2c7
	 ME/psC/8/tjfWOTQSmbtQ3N61l4B9Z2p5tEkbw6dkp0Q4Vz2slTago7cj4CFjOF1Vo
	 WeW8QBICwTKEN3EEGnEzfIMMGiWyMjZJFVNk8r1W0Utxpah2a66sDBWtXfukOU2seY
	 xC20v8k0fk9QNcUGdQaEK8HM+jUjbIWqxqoPvYgoyeuAuxa14h7W+2R9++2feMJYTH
	 f27U/IBGfQ4Fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZFL42cuQZEH; Wed, 14 Jun 2023 08:26:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6074880B22;
	Wed, 14 Jun 2023 08:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6074880B22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1CE51BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:26:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7927341741
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:26:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7927341741
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x7EeO4X3Hl5T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 08:26:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DE5D4173F
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2120.outbound.protection.outlook.com [40.107.223.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DE5D4173F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:26:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaEyTblWoACzU1BRs4nhiVY/G7LFWbnyQqAcDsG9s1uagYvdM6gXEeypvr8BU9Hc0QQHRFGYIYMn/rxuFhfAvm02LA7tU7Iz70Ma55S/gvJkue5xoZUEmRDVkhmE3qXRulFXn/W18UxQtsyjjd9I3U4pTpodRjmxYHztxoU05c/0Hgc+KAxzF83n3Kc7q5Rry2WRcXPTwwFBf3IFe+FZ6vnxE6n+/u80jAgFbf0rwuJOdj3W8QX80orGy/CrMhwEDIM3OQw1VF8uNsI2ttPoe3i018YUT5q4HD9s9hhyjpc+3cBQYc9S4EIGCO8GrwLfKKTL+Fl4KIk4QeZiqSmZYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3dHXr/LjfI+mpPMG+bFbxDo7mFAc0MjKzAVyIqvcZs=;
 b=Y7WVPnDA/w3mBHmggnRSVIQ6DCfBrKtrKRyrUF2m4hP8C3qCCJ5w4rJTrst1e9IYtAc4Rf6pKe/wsi8zyI5rcoph9IQm7mUn2DmERmps4vkrNHI9CX3fDYyFBKNhKSjzfqDud5EwoSK+iGmC1k69qNF4pyW52Ilq5elLfQH9v4he4UTIukm1dxBdNHCdzvXN6aXD6y3My44TfyZRm2lzFRBej1FZsGCj7hXKHgecQte9V8w6E0LLcpsMG1eN4BA1YSjy3sV+3VmR1e3bEtvsCSvx6YLYQEciaWizKwSTQmi/T2AhNlqmKoGLzKoK2Rp4d6aPXq5iodL1mhZkgq5okA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by LV8PR13MB6350.namprd13.prod.outlook.com (2603:10b6:408:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Wed, 14 Jun
 2023 08:26:12 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 08:26:12 +0000
Date: Wed, 14 Jun 2023 10:26:04 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ZIl5nM7sl1lJn0F5@corigine.com>
References: <20230613121610.137654-1-ivecera@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230613121610.137654-1-ivecera@redhat.com>
X-ClientProxiedBy: AM0PR02CA0178.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::15) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|LV8PR13MB6350:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ad038ca-94db-4e3a-8f15-08db6cb10313
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DspFS65rBV7ZCAvCT5pK7qgswVBXXkB7WRI44MtPrhpgsEwjRB6Sb/wraSpNHmZobXA93anbRQ9AycZvo/r08xRyl0vKOqsxgaogI3qX1ZXLG6MPgWaHTID18efF0L0D0w3svW4gMt29/xyoACriZk2nJaow2iCvJpwAaJYw0nh9/YRP+lMzsIkz8/S+knsqUAKRVNndHonJSWI5zl0dyGRMIhgQZog4paJZx3uA9i3D+laPVsyPnTaovK0E5hTu6tBT3PAEKYVfx4G9bc76YQlHlN7MISXVejEk8jbNELZowo3e3hyYb7gisHkLUInwbH/HhEz1r9UjTJzxZbDwB6Ph5aDG5ZrDgSQtSRF9jZ0j3SxGW4sY7pD09ynQOFtSCVwYOndBBwUmyNtZj1LHLXWbMr/M5ukEe+wRgPn6EPl4UKb92gEA3JU1s7vZyqvt43FlW7iedMIcxXzZozQ+j46aQHpYduX/wTpua/XFWWlY+FS1VFW5wO6KRYRAnNm+r2AIdrv39fHqUzr0jjFPCpHwmcbRotuiMHwAa/sL4Icemy+H43fH6+7DkhA11cSgaz5kbyC6vrvf5aAhz1D+LYrl/JI5aaf3l9eP9V/T0A8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(396003)(39840400004)(366004)(346002)(136003)(451199021)(36756003)(4744005)(2906002)(86362001)(44832011)(7416002)(6666004)(6486002)(186003)(6512007)(6506007)(5660300002)(478600001)(54906003)(66946007)(6916009)(66556008)(66476007)(4326008)(2616005)(316002)(38100700002)(8936002)(8676002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/06SDTXfYzlggYahXwYb+tX1/rBO0cn9uWCbEaUUqeGtwiXoWeRgVIJCkas7?=
 =?us-ascii?Q?Zc624Jh8uU8XJjSjO1q8+8JH6/AsNF0LOOc9/vQhiM3X3VkTrcWWcgYY0OEJ?=
 =?us-ascii?Q?TEFE6F/S6dTcPumMHMol8w4KDdEk3mFKliz70YBShArZZu9CnXSIi0lynq7D?=
 =?us-ascii?Q?ljnsqm7LP0VdYXwW3XyzwFYAqDVNk735wj1zFGEcxcR3QC6QK2gB6K6RHHXZ?=
 =?us-ascii?Q?6R5vYdiAQ8b6f7Zhmpq+FJ8txAcgf1lNyNJ7DeHtTea9f3/vjUTqkefU43kY?=
 =?us-ascii?Q?fBYPWX4NotahL72Tdp/oKV313xUgk5qg4tsMLgYTEZd9G1hRae0mGKKM89i8?=
 =?us-ascii?Q?QMyzjvUghCeTB5YMK6x1PrH1V8MOTh4gc1JQLv++ZFGiuDQPqYd6U0IXgCjf?=
 =?us-ascii?Q?Jvcsk0PJO9hM+wSOZGjiJOlKMFKTcV0aioxEjqAbYVaH7VdK6rgUrxLqHGe2?=
 =?us-ascii?Q?fnjObccMEWWRCzI3Ey2YsmGkyZRhAtKvZSKGLxfFzfybsoG5xAb/nVoPyVmV?=
 =?us-ascii?Q?CQrgkvSQ5arsusSvUWmXbGmEvY4aWocQBciOuLtjFT1KgUegzbcqNXHJBQnO?=
 =?us-ascii?Q?O4VfoD4bE8pvSw0qhWlO/Krse37H63p3s6TEplBtihNF80+ARJIB8k5O1TGs?=
 =?us-ascii?Q?T+wZRle1kXE12VMm6CL6J6lxRtRhcDIePnL1PkCYWOO+vAUuDmra3L63MO8B?=
 =?us-ascii?Q?08DDlYdOSS9A5Xx+2Ypf+46ReOjSc6pqwekQRXKR+WAV1dWZk22aHcp19Geu?=
 =?us-ascii?Q?uX25oYoMVO0jmY//tz+29mFTha3rimrw4URXUPj8cfZ7qtMhwHk9RFrWUlIM?=
 =?us-ascii?Q?IRj391ZvRU5GjWsqmOcZvpzmczHpUsXfbpOc1hTuxBwQIqwiVAyijBuy+dah?=
 =?us-ascii?Q?MfamJpIGb407RfjCeZd/WSMPvzmjSB9ntFnc0hMC/v+j9seNyICrqbZ8/rw2?=
 =?us-ascii?Q?9hjZIsmzApSzIBL/t4WjZ4sd3w39Zu4GUNU4widxWNDq7hxlMvpBh0GOMWsQ?=
 =?us-ascii?Q?YaguAD2x3h9rE59j0gCIuL5jhrbd5aZLb/qf5cDoZUt9XGC4GEDM6Gwk/uJw?=
 =?us-ascii?Q?gCLgvrcA9XRK3Zt1uIdCU1d3uwL+aef//si3rnFWfTS5uhiMMOsnEoo98Fh2?=
 =?us-ascii?Q?kyVIhbuKm7HL53FzzVfDvgJ5Lv451NOx3419oLfW7Hmj6V6YPTV30WxJ1F7X?=
 =?us-ascii?Q?lGaDWExq38EIxF2++R5jSGs32wuDeAlQAXBn5tOrrK5i+YoOAYJJ8N6hYZQR?=
 =?us-ascii?Q?ncmBOUOjAP0YF+FslpEWkWZtWEQtnCIR0YQdVgsdVRf5APWdt2yjY1164fCg?=
 =?us-ascii?Q?gFfJr2jpJddu/EuORbQj8/W9oi279Tyj0S2F0KH2p/tmMtPsHLQD1oPqijRT?=
 =?us-ascii?Q?FtAafIszlJDCE6I2OgsaF6RtS/1me1ouIJjZrFkFW9Hzg+wglkZYcNfnrFqL?=
 =?us-ascii?Q?0O8jCv/fgC7gK+VqqGBjjMHD5yQJu82SwXxP9INxQvuwBLrUz4osGeXor8Ec?=
 =?us-ascii?Q?GgRDyNkbemwwn38VkUfr5fPvbu9918RofHBfrJrDt2ANLJ8hTLdmh+TK3/mm?=
 =?us-ascii?Q?JGiuh7ath6KQ3Ev0Bd4/E8hoqYn4x2ce0Fp5AyPwLWBDjOuvk2DlgY20rr9j?=
 =?us-ascii?Q?LsYbcFYAYpJ7u6u3H8Gy4Zog9w4o6tdHYRT6Ra8t2/wkVrGBeQa0We/5skBe?=
 =?us-ascii?Q?B1ttSA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ad038ca-94db-4e3a-8f15-08db6cb10313
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 08:26:12.5131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i2Q/uNj7jYvfFg4RSuIoOC4i8pqtTWBXcvYbvB1pc7Ba0chcMBufYrFrGejjq3sV9e70nxRqGdjYHycQLnZjo+FZ4uJV7hJIrfgOV6U5b9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR13MB6350
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C3dHXr/LjfI+mpPMG+bFbxDo7mFAc0MjKzAVyIqvcZs=;
 b=MBwn1ulAZ/cdflF9QqGtdFKI83iCA29tMHxaqJ+DwzVJAt4N5sHXNV+lvrvNNcBmmY5Wl7ZM6csn3hGyTcRgyeYg3SHB6QXC4y0Px40GePFvZHfKFudDcL0nNUPIY4p86sNmIY4wtePzQWXRwwH4wzbnHEyVM/GqhTNozwEOf4I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=MBwn1ulA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Add helper for VF
 inited state check with timeout
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
Cc: Ma Yuying <yuma@redhat.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 13, 2023 at 02:16:09PM +0200, Ivan Vecera wrote:
> Move the check for VF inited state (with optional up-to 300ms
> timeout to separate helper i40e_check_vf_init_timeout() that
> will be used in the following commit.
> 
> Tested-by: Ma Yuying <yuma@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
