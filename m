Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDC81414FE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2020 01:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77B7B8682F;
	Sat, 18 Jan 2020 00:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9nGOZ6eKkqg; Sat, 18 Jan 2020 00:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0CF786B47;
	Sat, 18 Jan 2020 00:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3ED81BF9B9
 for <intel-wired-lan@osuosl.org>; Sat, 18 Jan 2020 00:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBB888682F
 for <intel-wired-lan@osuosl.org>; Sat, 18 Jan 2020 00:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6pD1y7OlzRw for <intel-wired-lan@osuosl.org>;
 Sat, 18 Jan 2020 00:01:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F4AD867F2
 for <intel-wired-lan@osuosl.org>; Sat, 18 Jan 2020 00:01:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 16:01:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,332,1574150400"; d="scan'208";a="373808699"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [134.134.177.86])
 ([134.134.177.86])
 by orsmga004.jf.intel.com with ESMTP; 17 Jan 2020 16:01:13 -0800
To: intel-wired-lan@osuosl.org
References: <20200116230508.1814-1-shiraz.saleem@intel.com>
 <20200116230508.1814-2-shiraz.saleem@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <69b30196-f854-0e5d-3971-818e720fd410@intel.com>
Date: Fri, 17 Jan 2020 16:01:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200116230508.1814-2-shiraz.saleem@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH RFC rdma 01/16] RDMA/irdma: Add driver
 framework definitions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Shiraz,

On 1/16/2020 3:04 PM, Shiraz Saleem wrote:
> From: Mustafa Ismail <mustafa.ismail@intel.com>
> 
> Register irdma as a platform driver capable of supporting platform
> devices from multi-generation RDMA capable Intel HW. Establish the
> interface with all supported netdev peer devices and initialize HW.
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>


> +enum irdma_dl_param_id {
> +	IRDMA_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> +	IRDMA_DEVLINK_PARAM_ID_LIMITS_SELECTOR,
> +	IRDMA_DEVLINK_PARAM_ID_UPLOAD_CONTEXT,
> +	IRDMA_DEVLINK_PARAM_ID_ROCE_ENABLE,
> +};
> +
> +static const struct devlink_param irdma_devlink_params[] = {
> +	/* Common */
> +	DEVLINK_PARAM_DRIVER(IRDMA_DEVLINK_PARAM_ID_LIMITS_SELECTOR,
> +			     "resource_limits_selector", DEVLINK_PARAM_TYPE_U8,
> +			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> +			      NULL, NULL, irdma_devlink_rsrc_limits_validate),
> +	DEVLINK_PARAM_DRIVER(IRDMA_DEVLINK_PARAM_ID_UPLOAD_CONTEXT,
> +			     "upload_context", DEVLINK_PARAM_TYPE_BOOL,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     irdma_devlink_upload_ctx_get,
> +			     irdma_devlink_upload_ctx_set, NULL),
> +#define IRDMA_DL_COMMON_PARAMS_ARRAY_SZ 2
> +	/* GEN_2 only */
> +	DEVLINK_PARAM_DRIVER(IRDMA_DEVLINK_PARAM_ID_ROCE_ENABLE,
> +			     "roce_enable", DEVLINK_PARAM_TYPE_BOOL,
> +			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> +			      NULL, NULL, NULL),
> +};
> +
The devlink parameter "roce_enable" should really be the standard
generic "enable_roce", as documented in
Documentation/networking/devlink/devlink-params.rst (Previously
Documentation/networking/devlink-params.txt).

It does not make sense to proliferate additional similar names when a
generic one already exists.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
