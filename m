Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 670BD7247F1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 17:38:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 906D06126F;
	Tue,  6 Jun 2023 15:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 906D06126F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686065916;
	bh=ujS/8FpeHUJb+uNEt/7oWFYccX3qaq/sTBgXdtNOQPg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cBuLTbcLyhCq6LCXyianTZ8kIcqMh6CBF/5pgMjiELvsFS09XZMItyfsUYSHwU+lZ
	 Sh5pU3DVi47/Obz3i9dzrgbLFlKQiN/9uzPKcq4N8dLadxg7oDNuv1o+Tdx3FMCdSn
	 OKicAvNu7zLW6nGLbkOBWyhMsT+xdBQLWgKPIjh1bW61YBEDT4EzNJgLJS+SDOQn9+
	 oz61xLRya3/whrkQuDsJABust6MKch+UqLyGvWLbTLbnjyxUq1bZSEqLmaGzH1X3t3
	 Owb7ZQ6t1Ls6O2oN8xL9sBb01bA5lPZRF6NrrF95mq0qjIJYwjtiEM9qwSUYhbZxEq
	 D7Jf8FxxEEWRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BG9pq3k7cWat; Tue,  6 Jun 2023 15:38:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DA7E61241;
	Tue,  6 Jun 2023 15:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DA7E61241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 025AF1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCA8640B85
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCA8640B85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izMQc05ohXPL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 15:38:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F84940131
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2126.outbound.protection.outlook.com [40.107.93.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F84940131
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:38:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwKc9LRaaoU4FGAcCccPWRkNWnvf0lg9Q7h0vvV9cS7ZhnrLVsq7z0ex2EAkZI3XVsCcLTvYt8wDtNz83xK+BuCuPQtXAV8bHt16W1G54DrprQGpAcZFE5l87J3n2gmAj4k9QUzk46m/JcgZ394fFWncKlwez8r9wkNlJhxXwIiEh315RNxzogrOEW3G762MzfnpQBURsU511cClJhagjQuXFaBAQ841JHW1krYqMw2rGMrT320x1++M62XC5Y9tu8XVAlW0Ajim3kTvz6L5/RQoIMwHio4PsBhF1m0c+iNJLnXFtUTKSHLw+mFFRPTLq/AW+dtJBVdxP4VHa/NL2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeMQ5O6P/oWjUu536htVZ59e2Z3cRclCviWazvyGUc4=;
 b=SMBlu8ZAq3uHv+WskGhytpQ0LgmOpeSeH/E/qG3FvGpC+1gEzMHTiKbqVahjB88j0yud2TBVQHWdPTkiejxOEHWaH+6z9rmQC8kmi1UqLfyINsFyhog/nfu/DXObYLLO2G/efop3ZXTm4h/3tBT3VD5e5BYV9Fh/ji9kdsP5Ocxba/CAv1ZwF8aZvMXcw4DojevrHW4la5NQl7s8ev3F8yTAggFqAHimxabHEowis2mIAzxgFN5VnPtrbHrNhI7gXGaJ34yeIUAl2D0LCg9c9ngY6wzbZ9bPC1ntZ8P1Q4aVvaTLipzsCaN2LcbfXkxSxsZtcpk4rpw9y0yg939IUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB3640.namprd13.prod.outlook.com (2603:10b6:610:97::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 15:38:26 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 15:38:26 +0000
Date: Tue, 6 Jun 2023 17:38:19 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZH9S6wPIg9os8HYa@corigine.com>
References: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
Content-Disposition: inline
In-Reply-To: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: AM0PR02CA0223.eurprd02.prod.outlook.com
 (2603:10a6:20b:28f::30) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB3640:EE_
X-MS-Office365-Filtering-Correlation-Id: dbb9172b-25fd-4346-3664-08db66a411ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WBh1z462VzHX7/DJCIQAz6+1TDDuBJd0Ye54EDSLsC4aWCKUMgKVkS1Xft+/yf5fgrugsf6oLbEMUy4xnokr0T83vwtNt5LE/Wdcmk47Ak0PR0q7ci4XPZFHYh+daFlkDO0pW8wB8m2REqEqOtz5NZ2irlcF8dAWh2mAj20DwkGjZAI7g9xhlAsTH4EJh9r/qojCKFhBcpeKA8ry/Czfzwkc4iAcwcbOQoe6mBBi32tcLUGj4NXc3v489rco6GcdFCtCtKKN4GnXwvayVWg/QEF8vTC6JnmWUCgvinKI1L1ykjtvGuTodYlnhwF9aCsZb71o0XTu88lrm9eWFQzZBjPvsoNTOGRFXAKopXRXwKGUeFy+Ubu3SleTYssB+V3lHnu08J+B49jYFOA3xH821Rui588+Y4ch7OVMCuLhQ23h5GnMbxpCV98mpDzsb/HmuzGsKUFIAgwuqs7nJdLBx9MIAgB7idpE8j1m9Ur+cYbjkWoe46VnDwzRmw08ZgIbzYIJvLoXDAMuzaaJPSNZ8LZb/cjRjOQI6dIy8sNey5q7zcgROLlmCn91hBQpS9im5iRXVOtAwbIXx6Ya3etQLGF4H3Qzm2XVsBu9duAtXh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39840400004)(346002)(366004)(376002)(396003)(451199021)(6506007)(186003)(6512007)(2616005)(36756003)(6486002)(2906002)(44832011)(8936002)(8676002)(6666004)(54906003)(478600001)(6916009)(38100700002)(5660300002)(86362001)(66476007)(41300700001)(66556008)(66946007)(316002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SJM9nNwKyD1H1KREEHVCckU4bznifwffrszscyRv9STD9Xigvt1EHWRSmaNn?=
 =?us-ascii?Q?LA+ancSRLoeg5WFOjVaB9ITlO/pL3Z6wt5qyEKoeZO0xBQP0joF/9XO4tB0o?=
 =?us-ascii?Q?O6nB/p1vo/Ch0Gk2fr+Dzx4MX8m5Wb7s1KaCULFYdFrwjiBKQf7lLegxVZj+?=
 =?us-ascii?Q?l13Y2V+E2mrSiozhutcG1oT17HUQWxfLR6dI00IwCRTiqK7OSSzaCpXd2yEY?=
 =?us-ascii?Q?vLV3BWDzB0/zwABA5Wf2jcLZpvsHlq2a104oBH7lAYIFUd47U6e+nl58mrfq?=
 =?us-ascii?Q?bY34kVamVjAe1Y7wgblrIUy/sSQ72YLSH2Qw4Mb8YlN/pob9GTNmw7iNeD4d?=
 =?us-ascii?Q?abi15tluvGdwIjn0AHDR2pXQJIqfgwQFdG2ZGN3DnPs4Yau5CeQt4ZMnobWj?=
 =?us-ascii?Q?TxgkmLZoqOCMmxk6Uv6ua+9ATWjM9ZnQk6UBGHh5zxrWAqsQtS2Y2k+gQdA/?=
 =?us-ascii?Q?LRNKNTSn5WG73bWZ127vUZw2q8nENL1ig6daCTLf3FZJSXqFgCQfhjiBQyNe?=
 =?us-ascii?Q?UskPyLzk/0nfSPSSumP+vVoL1m48PocvZwiqJzXhgxy9jkPQ73Y9Hz9fPMiV?=
 =?us-ascii?Q?/SGS59PB3TcP7UWx8YpEyKEj8dEr7tGZ/vO+xDlgd162Ta/uD9ckxOXBMbHM?=
 =?us-ascii?Q?rzIXdZEdbngJGWaUWLGEWKsIQmWCB6a8rE69NKZ+swyZ9J5WvjX2NW3kDdVE?=
 =?us-ascii?Q?y8jByRKXMPDtSksGJMN0XHAHrFL/2hc8/KS1zVMcq/tF28B0ENzyJgSlLeBl?=
 =?us-ascii?Q?0QUZol15IfwjdG69sVe54LnO2EnUNvCmi05NSRfZdVwL7LgG54nohLvP96W0?=
 =?us-ascii?Q?4Nb5Br/DZYztTbZ9j8q8xeCC4Hu7dq8s9c4QUsKYI1Kf13MTXn5v5m59K74r?=
 =?us-ascii?Q?kb1ztHALleRCziAoJAEdppcviDWYVRxa21pxw0wMX3eWpF2sEmww2xyezhd4?=
 =?us-ascii?Q?Gsw5Tn1QBzZ2CnxRAc8kVOioDRD1c2FXELsRbNEtW/Z/rqMIp/oJEipChvfC?=
 =?us-ascii?Q?+RGU4vkeiYhQU/Cm03JTWSmY43HFEqp/Blg3mKEOO71sr1jdCrmQpEUPbjZu?=
 =?us-ascii?Q?muOvypBUISPLDtpYqXX3QhHZDDvShQWs9iOQ9j5KBMx2jZj9bwjYMEIXCfAj?=
 =?us-ascii?Q?cStMX+FhP5fufhDhDTep72u/8Y2Ei5qixUTLXEX3/s8RZpH/E8MRbhDZMpW7?=
 =?us-ascii?Q?6+c/qwmfTPiAe+hW+ONt22MwpmF5on9N1lRgxIIDcPgsiINQW4Zc26gDdYOU?=
 =?us-ascii?Q?NvGvrR0A2Qjcq5IiXwqPC/U7y+lXvK/2s0T/vKTQkQjavS9t6IgGQ0Z+8qXQ?=
 =?us-ascii?Q?g+b9nEcUa2X7pna1CXQGbg7RoD2QcSa+gnUxdWscCMkYOQhScQ1J8/Ccprif?=
 =?us-ascii?Q?t43MYRVgEtByua8GlqABBEkLst/iPrsHCqm9+ddvt1D10g5ac8xeTGVU6b0R?=
 =?us-ascii?Q?xPGkGl2rzcj0rIgQCZfEB3BVNXr1VcaKxlaJSH4juFgJk+2A5pbos4D/wmkz?=
 =?us-ascii?Q?OCo1vFM31qTsfksZOKZw6CTIUFNa0vCEYOk7GkA1Z+dxE1sgP3pKKyZywnkM?=
 =?us-ascii?Q?p2HMZzrO2ZXa7iu17RahtgMX9Uu2bwqi/yAEsGOaO1Vl+0G1S45FuyW9tRhr?=
 =?us-ascii?Q?hnGlWctrxNd6RUwzGVDlIuzgC3j7V8KmwJti/LgPgJGCysglIQKcN0lxrd0w?=
 =?us-ascii?Q?ErpQOg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbb9172b-25fd-4346-3664-08db66a411ab
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 15:38:26.1738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TdMsYFE+2xBso+KfqlTbLKKEbx6DTR2eIXZYXW9RsrYu3UmMQr3WszrK+nsjsCvUrJSDcf7ovuO2WBi/W/NF5CzYoH2W4FZArwsLYW+MKfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3640
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zeMQ5O6P/oWjUu536htVZ59e2Z3cRclCviWazvyGUc4=;
 b=QlrLqYZQi+Bq+jvBK29UD2KgoARKYCaseSXGZn+LUR6uwC+4Ic1Lk6VS5FzmxqAZ6zlhIvjeBYqFbjvxcHiFT3eXI+43qPuXwn8ADXZkMYrPMAwjYDZAgIKFyiWE83XNssR6sX1HdC+/lOWo5HUx1Vt24NZDskEGL3Hx57CxchQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=QlrLqYZQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 06, 2023 at 01:11:49PM +0200, Przemek Kitszel wrote:

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 6acb40f3c202..af4c8ddcafb0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -3869,6 +3869,30 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
>  	return status;
>  }
>  
> +static enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type)
> +{
> +	switch (type) {
> +	case ICE_LUT_VSI:
> +		return ICE_LUT_VSI_SIZE;
> +	case ICE_LUT_GLOBAL:
> +		return ICE_LUT_GLOBAL_SIZE;
> +	case ICE_LUT_PF:
> +		return ICE_LUT_PF_SIZE;
> +	}

Hi Przemek,

I see where you are going here, but gcc-12 W=1 wants a return here.

> +}
> +
> +static enum ice_aqc_lut_flags ice_lut_size_to_flag(enum ice_lut_size size)
> +{
> +	switch (size) {
> +	case ICE_LUT_VSI_SIZE:
> +		return ICE_AQC_LUT_SIZE_SMALL;
> +	case ICE_LUT_GLOBAL_SIZE:
> +		return ICE_AQC_LUT_SIZE_512;
> +	case ICE_LUT_PF_SIZE:
> +		return ICE_AQC_LUT_SIZE_2K;
> +	}

And here.

> +}
> +
>  /**
>   * __ice_aq_get_set_rss_lut
>   * @hw: pointer to the hardware structure

-- 
pw-bot: cr

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
