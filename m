Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CDA6F2EF5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 May 2023 09:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A4396110D;
	Mon,  1 May 2023 07:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A4396110D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682924532;
	bh=HI4j9LnUSXmbQOkbKXnew2ZsuJmL+aAYyJKM8sfEFYI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FB1dw+VnsSszhUUCw+boXql5bIPJnM9JJ6GBUt2OtPWztQosX3FfOGYQVX0pKf0LW
	 h7EmUwV1x1DpTHHszbQ5i3kp0+57jSvw59WvkDWaJkTyzvss5Y5xzOr6UceDQGrtuW
	 wq2lwY3c8EjSQpSa7kspjP4UvHXHofbRFcJvaNXs+xaDl088T86joYCbXnprPY9IUl
	 ILicxrO3F3j4l66tfecbIZxDmHMK2STDOBuLUUFfA2EJq+GmiI1t3VUyMSP+ZE7k++
	 AGXYFFfI0hGa8YMMJa+B+/wanpq5yf5EfJaQZ4l53RkJErBH2yDxbsCbcFAzIxw/6r
	 1kO1FaNLp2bYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wv2KjaOkGuGM; Mon,  1 May 2023 07:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FCF960BC4;
	Mon,  1 May 2023 07:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FCF960BC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 238091BF429
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 07:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE8DA4056B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 07:02:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE8DA4056B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hQb6GlfFBbRi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 May 2023 07:02:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A6EC4015A
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2096.outbound.protection.outlook.com [40.107.95.96])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A6EC4015A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 07:02:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TqV1RdNFc+7sk+hezXymDPRw4Ws4eeEI/jAuRHTENM13Q1aAZUG9WdiDQ3bNxbU4einun+xvgqGcs5zIwWqNL7LwjPn+ew4v08hgYsic/YxHjkSgUmX+ockCD4OR82oe16XOD4SY6fWzAOio9qXc1RJTDevVq0Sa7dugNmpvgwQPQ5xYsbJsdfDcfOn/leZDn+OiuNQqRP51BqSu2c2bhSjRT+h2mamBPUojnQJRYFRg2UNLvJYae+AKVhyWvmyTRBrgkp1PpFP018a/X4Ua58U++jCIDXNPvUutKI6SjDOvlU/5tRAkISqXHHnfZ3brJEIeAAXwXdF0qMvSXycG4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OeNQ6NciL+FVDpSscdKIz8pcZfnXabvWqqn2X2dWh9c=;
 b=S5NePEtyX9svvPAelAKIlrKC8+TYTaeQY6ICGS7H5FbviE08iYJLhU7ZXEKDU+5GALbT6LqsBGkqZU4F5sf+RfnO648oRrhUNJu9egIRxLCCIXIzx//dAtGkK7vz+gLUWZWZKyEE+z040CCsYTRFlrgs3xkQ45Xeq3eXMMUx5Y0mfKZCQrQh6H0xw2Zno63qR9nxWEKF9z2h2+ivAwDBC4xOm2GXiXQ38GYcCHvlKXnlrnAcShNnddQzNW0K71vDX1Ok4YvJnwL3vOnD7J8/BY9qwZ7xaReFHTlKF3qbLqASf+uLZkq10VRXZgYUIv4SuU+QJBQTbhgL112P/xBdNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW5PR13MB5510.namprd13.prod.outlook.com (2603:10b6:303:195::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.30; Mon, 1 May
 2023 07:02:01 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6340.030; Mon, 1 May 2023
 07:02:00 +0000
Date: Mon, 1 May 2023 09:01:52 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <ZE9j4CHtQbm5S3cg@corigine.com>
References: <20230429132022.31765-1-dinghui@sangfor.com.cn>
 <20230429132022.31765-2-dinghui@sangfor.com.cn>
Content-Disposition: inline
In-Reply-To: <20230429132022.31765-2-dinghui@sangfor.com.cn>
X-ClientProxiedBy: AM0PR06CA0082.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::23) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW5PR13MB5510:EE_
X-MS-Office365-Filtering-Correlation-Id: e1ef0cc0-e93d-4028-843b-08db4a11f5b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cyyul59wzTenV8dPTkwoFG18WVwFzzbZi9PHo1F+sYVNh1mFiH0kZgS/PEjcsvx8KHea/t86pkYX8QPQNZPxy8alT6fJRiTlZz5n/NmLs1guNRWsMNdwCldEssF9EJkB5glaT9LtvHYfmNutmF9AtKcl9WrsiZsl79yr/z4Ac6yMJ+Vx0SrxbFFmPmII+WRyXGscDTpQZvXCHJj5Bq4XgNSyIFR1zEDsCrl/62IWiXd7IL791EGWevMyaPfdc6HGVWXJTAralXIkGX1QyLu0GvrYxwDtGz1LsRVuh+b9eG8+s5/qU8iOGKaHGSC4XuYBEwzX7oaiQhZrv3dMygcK0G10Ycylee9sWdvUsWxOGGZH97douQt1fWSUIMEo3YpkQXGhLFZFzkGvGV4DnnKEisJy19QDjlDYGUVY0rLALLi82A/RjEYcz6thNcovN4u0kszLwyTnRz3I661Vxbk6d4JTYKiB3tKHbsJCg9WcAYJafKvLosyFqIWbK1o6tA37ClQNKZpTB/PaI3ZBQxTC6sXANFZnY/wiPoEcS3UD4Ko=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(376002)(39830400003)(396003)(136003)(451199021)(2616005)(478600001)(83380400001)(186003)(4326008)(66556008)(66476007)(6916009)(66946007)(84970400001)(6486002)(6666004)(6512007)(6506007)(316002)(8936002)(8676002)(5660300002)(7416002)(41300700001)(44832011)(2906002)(38100700002)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OYd5zLFeDTL4StzW/E+CyeSlUT3wrCIEF4+nE2OKk/qra+3kTDaFDTRTsuCG?=
 =?us-ascii?Q?wJ4cFAsaKZ7nfVwLzHRyWzPJ1ESFRo1n0yX/euBfwBFEKT0H4W4OELTcsM0q?=
 =?us-ascii?Q?FQZgda2eEM1JPElMsmRc5z6MRkCZOQIbHDhCAm3xZZu1dIvsGIJ7fKYtP3ca?=
 =?us-ascii?Q?//CfRj7jKIYiOEUAMsJeyKnbwxDtoYIJ04hrlKRlmzNPb0TTb/6DcwIcdZWO?=
 =?us-ascii?Q?icKbLrM4/F19cYuwbDO3l1MgzY6zoHNYs0hYw6ocjv84labcnyhn67XiCDhJ?=
 =?us-ascii?Q?BFxx6p/9fjUH1h0Httf2gKsGIhjemhg2gs63LMrQq9gowRC6kRe4UuVojsB0?=
 =?us-ascii?Q?t/NoObriDRNSkAC3v78KgMbzpGocJ77fXT/fRYZ1DxZI+0qlW3qvNODw8F/r?=
 =?us-ascii?Q?noI8ej+wgr6TZo/M5CCJ4e3m/0ErJ24IXLWxbcCAh+stW7zg7mPjMusvESj0?=
 =?us-ascii?Q?hPbleUSVkZOaOcWau4q/c2ivXM6SDtdjvuoHYi16mwm7gDtkV5kTKi9frodA?=
 =?us-ascii?Q?bSfqFbjuXgOh+BLKGk30jsWM+3vI2Rn+b6VZkNEMFq+iXVx+M152WJSpNjo1?=
 =?us-ascii?Q?hi7NrpQKF4cWCYO1mGasjWJ3W0eSDxz9/oAUKWKRLxxrIklQxY/srlii3rR5?=
 =?us-ascii?Q?XaTNCrWKR6qzigEp/KbOveFE5C9SUF2e4q7gDugIoMIFOabS13ecHFnikijY?=
 =?us-ascii?Q?FgMC1Yzhl3BnfvIAPhttu6ynSAb9fmBKDrce/jsL7l6EyqUgzzBra3U6syHj?=
 =?us-ascii?Q?HMFTqKhR9pA+2uC7oKfpQEkPXMvrtDq2Mkaig5NccGi9Qsw/cQX5jEpg/Jl4?=
 =?us-ascii?Q?Np+O1w9qG5DrRgcHeXYRtaABUYbRqeVSxpXT6YBkKI1AQplcpZuBrohlACBr?=
 =?us-ascii?Q?KvyyPkFoejSUlXaiTlmT3DkgAYEOEfmB+7ia90l+b7O9mZoOlXjeaZYmAPy2?=
 =?us-ascii?Q?Z+CHCXvzIxM0Ud8mXi1m3ZIZrlQ8IjplMTdl4JBkvkxm+w1F5fIrX6P0W1D6?=
 =?us-ascii?Q?F0U5OPuMCMb76zV3KGYlU0UVZSih6MTgz2Jho4AjGfNbZ+8ObvVGYKXA3CXD?=
 =?us-ascii?Q?AbWBWSsZMD162JSJwzqvU0dznBRxRcUQQZz1LTk54tbejwyLa/KF/bFRg6Wm?=
 =?us-ascii?Q?Hzgdx9z//xyrq/NFAMMQ6Yuyx7h3yIm2wdym/lpjP2MOkS2KDXfpjwtuGGHZ?=
 =?us-ascii?Q?+mZJo/g7NFUr5Ax9HJSqVPuAF6BmlMHWpu9NJlN7N2bbvSkS12SfDQCjWnyX?=
 =?us-ascii?Q?tCsP/MCecmRUQ8yM+WlLyvHuUhiOEQt8wRDkaStpdL71Aek84EDHT4ex2cga?=
 =?us-ascii?Q?aIyDm8YS/r4P0he7AIPs48GdfMUy6stnmKckOGKZJtngyshPVhLpgt8nfLx/?=
 =?us-ascii?Q?L0zkwkcvWMXPTgL+GOuiTg04CKJI8NSYukNOtfv7VsqTX5vzwvVdPd8rcbjn?=
 =?us-ascii?Q?aAZGMDYOrCsRlTVr4XZFguQKitwqNja8e2shthhS8XvRaaRAgODKnx0fC3+q?=
 =?us-ascii?Q?Qq1KkgayjQkYhqzcR2KZG8NwbXTweb2NRag8zvadbD9V4ZRYdsfzAv0ifvRU?=
 =?us-ascii?Q?fHzgFEqr6h2ZXaiNS3Lyrx38yk0j76bFM2oqGnVwMBzYPDjwBxerMnQfbaOX?=
 =?us-ascii?Q?s/kdplxk3VRkq170Upmbfni3NetAOA5XhHf82lw6wU65xs9mt6Qs1MVRjurc?=
 =?us-ascii?Q?pHtJNQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1ef0cc0-e93d-4028-843b-08db4a11f5b9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2023 07:02:00.2815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dxW/u6UIkIyuQC66kOw2n72H+5f+f10QDkTmXF9b2JuNbZs0DABEccMx8hfU8PIxxnmyadPUzmNJylFPFwo1McDpmQc+nz9GiceVO90HQdk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR13MB5510
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OeNQ6NciL+FVDpSscdKIz8pcZfnXabvWqqn2X2dWh9c=;
 b=Y3JEJkkVKW0VFtIIRaLT4E4U54D7M8KYYPDCS7W5aLQgk6VTlIBG2YIlF+ypXP270IphJpQADge/CFKyjpk9B1k9cjrfzaK/hOuw59j7+Uui/4/CmrHB6qKFQGCI8asM/s+vDcXQrU3FCYtzNnFKiv4J3KEYNDB0324QsEf4aK8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Y3JEJkkV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/2] iavf: Fix use-after-free
 in free_netdev
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 29, 2023 at 09:20:21PM +0800, Ding Hui wrote:
> We do netif_napi_add() for all allocated q_vectors[], but potentially
> do netif_napi_del() for part of them, then kfree q_vectors and leave
> invalid pointers at dev->napi_list.
> 
> Reproducer:
> 
>   [root@host ~]# cat repro.sh
>   #!/bin/bash
> 
>   pf_dbsf="0000:41:00.0"
>   vf0_dbsf="0000:41:02.0"
>   g_pids=()
> 
>   function do_set_numvf()
>   {
>       echo 2 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
>       sleep $((RANDOM%3+1))
>       echo 0 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
>       sleep $((RANDOM%3+1))
>   }
> 
>   function do_set_channel()
>   {
>       local nic=$(ls -1 --indicator-style=none /sys/bus/pci/devices/${vf0_dbsf}/net/)
>       [ -z "$nic" ] && { sleep $((RANDOM%3)) ; return 1; }
>       ifconfig $nic 192.168.18.5 netmask 255.255.255.0
>       ifconfig $nic up
>       ethtool -L $nic combined 1
>       ethtool -L $nic combined 4
>       sleep $((RANDOM%3))
>   }
> 
>   function on_exit()
>   {
>       local pid
>       for pid in "${g_pids[@]}"; do
>           kill -0 "$pid" &>/dev/null && kill "$pid" &>/dev/null
>       done
>       g_pids=()
>   }
> 
>   trap "on_exit; exit" EXIT
> 
>   while :; do do_set_numvf ; done &
>   g_pids+=($!)
>   while :; do do_set_channel ; done &
>   g_pids+=($!)
> 
>   wait
> 
> Result:
> 
> [ 4093.900222] ==================================================================
> [ 4093.900230] BUG: KASAN: use-after-free in free_netdev+0x308/0x390
> [ 4093.900232] Read of size 8 at addr ffff88b4dc145640 by task repro.sh/6699
> [ 4093.900233]
> [ 4093.900236] CPU: 10 PID: 6699 Comm: repro.sh Kdump: loaded Tainted: G           O     --------- -t - 4.18.0 #1
> [ 4093.900238] Hardware name: Powerleader PR2008AL/H12DSi-N6, BIOS 2.0 04/09/2021
> [ 4093.900239] Call Trace:
> [ 4093.900244]  dump_stack+0x71/0xab
> [ 4093.900249]  print_address_description+0x6b/0x290
> [ 4093.900251]  ? free_netdev+0x308/0x390
> [ 4093.900252]  kasan_report+0x14a/0x2b0
> [ 4093.900254]  free_netdev+0x308/0x390
> [ 4093.900261]  iavf_remove+0x825/0xd20 [iavf]
> [ 4093.900265]  pci_device_remove+0xa8/0x1f0
> [ 4093.900268]  device_release_driver_internal+0x1c6/0x460
> [ 4093.900271]  pci_stop_bus_device+0x101/0x150
> [ 4093.900273]  pci_stop_and_remove_bus_device+0xe/0x20
> [ 4093.900275]  pci_iov_remove_virtfn+0x187/0x420
> [ 4093.900277]  ? pci_iov_add_virtfn+0xe10/0xe10
> [ 4093.900278]  ? pci_get_subsys+0x90/0x90
> [ 4093.900280]  sriov_disable+0xed/0x3e0
> [ 4093.900282]  ? bus_find_device+0x12d/0x1a0
> [ 4093.900290]  i40e_free_vfs+0x754/0x1210 [i40e]
> [ 4093.900298]  ? i40e_reset_all_vfs+0x880/0x880 [i40e]
> [ 4093.900299]  ? pci_get_device+0x7c/0x90
> [ 4093.900300]  ? pci_get_subsys+0x90/0x90
> [ 4093.900306]  ? pci_vfs_assigned.part.7+0x144/0x210
> [ 4093.900309]  ? __mutex_lock_slowpath+0x10/0x10
> [ 4093.900315]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
> [ 4093.900318]  sriov_numvfs_store+0x214/0x290
> [ 4093.900320]  ? sriov_totalvfs_show+0x30/0x30
> [ 4093.900321]  ? __mutex_lock_slowpath+0x10/0x10
> [ 4093.900323]  ? __check_object_size+0x15a/0x350
> [ 4093.900326]  kernfs_fop_write+0x280/0x3f0
> [ 4093.900329]  vfs_write+0x145/0x440
> [ 4093.900330]  ksys_write+0xab/0x160
> [ 4093.900332]  ? __ia32_sys_read+0xb0/0xb0
> [ 4093.900334]  ? fput_many+0x1a/0x120
> [ 4093.900335]  ? filp_close+0xf0/0x130
> [ 4093.900338]  do_syscall_64+0xa0/0x370
> [ 4093.900339]  ? page_fault+0x8/0x30
> [ 4093.900341]  entry_SYSCALL_64_after_hwframe+0x65/0xca
> [ 4093.900357] RIP: 0033:0x7f16ad4d22c0
> [ 4093.900359] Code: 73 01 c3 48 8b 0d d8 cb 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 89 24 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 fe dd 01 00 48 89 04 24
> [ 4093.900360] RSP: 002b:00007ffd6491b7f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [ 4093.900362] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f16ad4d22c0
> [ 4093.900363] RDX: 0000000000000002 RSI: 0000000001a41408 RDI: 0000000000000001
> [ 4093.900364] RBP: 0000000001a41408 R08: 00007f16ad7a1780 R09: 00007f16ae1f2700
> [ 4093.900364] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000002
> [ 4093.900365] R13: 0000000000000001 R14: 00007f16ad7a0620 R15: 0000000000000001
> [ 4093.900367]
> [ 4093.900368] Allocated by task 820:
> [ 4093.900371]  kasan_kmalloc+0xa6/0xd0
> [ 4093.900373]  __kmalloc+0xfb/0x200
> [ 4093.900376]  iavf_init_interrupt_scheme+0x63b/0x1320 [iavf]
> [ 4093.900380]  iavf_watchdog_task+0x3d51/0x52c0 [iavf]
> [ 4093.900382]  process_one_work+0x56a/0x11f0
> [ 4093.900383]  worker_thread+0x8f/0xf40
> [ 4093.900384]  kthread+0x2a0/0x390
> [ 4093.900385]  ret_from_fork+0x1f/0x40
> [ 4093.900387]  0xffffffffffffffff
> [ 4093.900387]
> [ 4093.900388] Freed by task 6699:
> [ 4093.900390]  __kasan_slab_free+0x137/0x190
> [ 4093.900391]  kfree+0x8b/0x1b0
> [ 4093.900394]  iavf_free_q_vectors+0x11d/0x1a0 [iavf]
> [ 4093.900397]  iavf_remove+0x35a/0xd20 [iavf]
> [ 4093.900399]  pci_device_remove+0xa8/0x1f0
> [ 4093.900400]  device_release_driver_internal+0x1c6/0x460
> [ 4093.900401]  pci_stop_bus_device+0x101/0x150
> [ 4093.900402]  pci_stop_and_remove_bus_device+0xe/0x20
> [ 4093.900403]  pci_iov_remove_virtfn+0x187/0x420
> [ 4093.900404]  sriov_disable+0xed/0x3e0
> [ 4093.900409]  i40e_free_vfs+0x754/0x1210 [i40e]
> [ 4093.900415]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
> [ 4093.900416]  sriov_numvfs_store+0x214/0x290
> [ 4093.900417]  kernfs_fop_write+0x280/0x3f0
> [ 4093.900418]  vfs_write+0x145/0x440
> [ 4093.900419]  ksys_write+0xab/0x160
> [ 4093.900420]  do_syscall_64+0xa0/0x370
> [ 4093.900421]  entry_SYSCALL_64_after_hwframe+0x65/0xca
> [ 4093.900422]  0xffffffffffffffff
> [ 4093.900422]
> [ 4093.900424] The buggy address belongs to the object at ffff88b4dc144200
>                 which belongs to the cache kmalloc-8k of size 8192
> [ 4093.900425] The buggy address is located 5184 bytes inside of
>                 8192-byte region [ffff88b4dc144200, ffff88b4dc146200)
> [ 4093.900425] The buggy address belongs to the page:
> [ 4093.900427] page:ffffea00d3705000 refcount:1 mapcount:0 mapping:ffff88bf04415c80 index:0x0 compound_mapcount: 0
> [ 4093.900430] flags: 0x10000000008100(slab|head)
> [ 4093.900433] raw: 0010000000008100 dead000000000100 dead000000000200 ffff88bf04415c80
> [ 4093.900434] raw: 0000000000000000 0000000000030003 00000001ffffffff 0000000000000000
> [ 4093.900434] page dumped because: kasan: bad access detected
> [ 4093.900435]
> [ 4093.900435] Memory state around the buggy address:
> [ 4093.900436]  ffff88b4dc145500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900437]  ffff88b4dc145580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900438] >ffff88b4dc145600: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900438]                                            ^
> [ 4093.900439]  ffff88b4dc145680: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900440]  ffff88b4dc145700: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900440] ==================================================================
> 
> Although the patch #2 (of 2) can avoid the issuse triggered by this
> repro.sh, there still are other potential risks that if num_active_queues
> is changed to less than allocated q_vectors[] by unexpected, the
> mismatched netif_napi_add/del() can also casue UAF.

nit: ./checkpatch --codespell tells me:

     s/casue/cause/

> Since we actually call netif_napi_add() for all allocated q_vectors
> unconditionally in iavf_alloc_q_vectors(), so we should fix it by
> letting netif_napi_del() match to netif_napi_add().
> 
> Fixes: 5eae00c57f5e ("i40evf: main driver core")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
> Cc: Huang Cun <huangcun@sangfor.com.cn>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
