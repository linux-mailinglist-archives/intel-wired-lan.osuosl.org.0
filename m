Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F419626E11
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Nov 2022 08:33:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E8FE80FAE;
	Sun, 13 Nov 2022 07:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E8FE80FAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668324821;
	bh=vCL7ZM7W7VE3BApqOyoTINTL/2YSsnlYRH49Aj1GpD4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NSbpDWcQSjLOKFaIP/TLuMC71zaAqzbkLKHcagD4hk0iJK6wUNVu1tePNrDeX6X5w
	 nThV3zH2dyN/QCsGZTYOjrTtCFfkwrMWmtrbBde6OACP6SEMxW5RfOq6a2aR4z0YOY
	 aQh3IUI2F1t99+1EAQDKDM8plU5d1qRCyhAy4uHyH4v5FvGIe8w59PlMMvKrB2OR21
	 qxVcTY3HeODxxEBTjsf1lBqo0yLy8rEDbXCddxWhq8ASoq9N6D1U+56ENlualgpEtx
	 QIJ5SoygFOW6qHAkU7V2zt+wEKCHubgluPKVGZ1PHQ1sFVqQmqQvTiFJ05kOeSyqCZ
	 fU+E2zYzZae2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBJ4pf_jokkC; Sun, 13 Nov 2022 07:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E81980CE0;
	Sun, 13 Nov 2022 07:33:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E81980CE0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 530071BF4E5
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39F2D40562
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39F2D40562
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cy00ZoO2B7Fl for <intel-wired-lan@osuosl.org>;
 Sun, 13 Nov 2022 07:33:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DC99400CF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9DC99400CF
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:33:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="310500131"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310500131"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:33:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="967209401"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="967209401"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:33:33 -0800
Message-ID: <e3fda18d-ce88-1407-9d60-4f559c1ed018@linux.intel.com>
Date: Sun, 13 Nov 2022 09:33:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
 <20221030045324.25207-6-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221030045324.25207-6-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668324814; x=1699860814;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SNXbyRVgVIs45sjqwyx9TMeTngNs951TVniG1IC2NW4=;
 b=IMrvfDj/EjKbQ9PJgL7COjVKF7hoTa4T9+hCdGYXZTAeosWF0N7frz4f
 6qXTGqa4TTbZqQqaOAiwQJT7zFC5AnUWOlGWKrZHzgXi9n1ttrJkFd6ne
 z+1O8Gid87ddhhEVBrRPHsmWAFyjW7NuxLPRdWeRtp/sv5oDZe1+jNoIw
 V0sIr1TNGdWOhKm/4J4wRhFhUakei/bEPjxb9QCwlc/9J40Tb/bEhBEBm
 bkf820sS1dvsrBvOI5B9ZoJLzaFV54/y+HiQ8KjiUM2qOcT1Wbdg/CxvV
 XRKvjGvGut1zMdvubWtdhAd8VgavpjeqUPjcN/xDiw5no6B2SynriedlN
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IMrvfDj/
Subject: Re: [Intel-wired-lan] [PATCH 5/5] igc: Set Qbv start_time and
 end_time to end_time if not being configured in GCL
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
Cc: tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/30/2022 06:53, Muhammad Husaini Zulkifli wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> The default setting of end_time minus start_time is whole 1 second.
> Thus, if it's not being configured in any GCL entry then it will be
> staying at original 1 second.
> 
> This patch is changing the start_time and end_time to be end_time as
> if setting zero will be having weird HW behavior where the gate will
> not be fully closed.
> 
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
