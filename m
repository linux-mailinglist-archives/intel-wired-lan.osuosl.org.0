Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B398182BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 08:58:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5ED860E58;
	Tue, 19 Dec 2023 07:58:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5ED860E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702972683;
	bh=71U6YiOQPZXRPwwjKzKzlIe7uuKnCRb1HKJvzZ8X4cM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iidumt3BtdL/s6LwCnFX2UkR612Be3enmP/nbIer1qfHblCnGiW1XPxM1Zjvs88P0
	 pERFg7sAbjksALsF5hqd5u0i/iMkjnGhtmvPVxbvIPkWYfq3i/CQ8OdMDU1go0UINb
	 wi71bQU9UZ/7ONSwv0bv3mwUS1FVEvd8O8MKLCwH1flEOQPugBkWwlkzOakvDFHeWx
	 QGdbgzePt6wSN1zCkvsxrPy8ujSch8N0osN8bjBms6Hhm4KrQeSoco7EOfjHs4PABp
	 2v8wDXUH1WI+rvJ6c6tN+AtaJiiKwsmNESP+2s5oT9ocHoDyko+K2OJQcI5G+3DSLN
	 LTq1ptTPrFOzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BBJer-jX9xSt; Tue, 19 Dec 2023 07:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9502160B99;
	Tue, 19 Dec 2023 07:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9502160B99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 886531BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 07:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E678404A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 07:57:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E678404A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xQrPy8bM67bY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 07:57:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A53D9401E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 07:57:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A53D9401E4
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="375773330"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="375773330"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 23:57:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="1107266039"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="1107266039"
Received: from unknown (HELO [10.245.181.167]) ([10.245.181.167])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 23:57:53 -0800
Message-ID: <ee1112af-cb13-483b-b6b5-4489a39c57cc@linux.intel.com>
Date: Tue, 19 Dec 2023 09:57:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-2-jesse.brandeburg@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231206010114.2259388-2-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702972676; x=1734508676;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TX9aq9Or/fcKMYHi5Am9qe6ecLnIT6hcDHmGpXbECOg=;
 b=P8A7vwCXARx/ho0/8P7mJNyfg5t8vrS8SEYP/GvxfZAt/kIA8UZlgeen
 gmVYb72nGyITB5Ll/1NNZr6FKgPygzjotFhZ/TZ6JGoI/K9oD91QRQ65C
 zxEf8xeo9YNAFBk5306TUX+ITURNBnw1YVLvoSG2LDleis1yTiIQHBw3H
 owuV8zzb+rrVevJjb0yAXF/VEmZt1006KDY2iHDov4FXRJweDrnQm/Vgk
 f5IqPWyvfG7UqXLErEjLDHZ25793s9P92iar1eTbcYLvG0dW1p1Wpf3IV
 1AwaoyWGwbuJpNC1slEVWQFPKcQEjyIpwRfCDxSp8LMcw1NjSkEIATfgG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P8A7vwCX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/15] e1000e: make lost
 bits explicit
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
Cc: przemyslaw.kitszel@intel.com, marcin.szycik@linux.intel.com,
 netdev@vger.kernel.org, horms@kernel.org, aleksander.lobakin@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/6/2023 03:01, Jesse Brandeburg wrote:
> For more than 15 years this code has passed in a request for a page and
> masked off that page when read/writing. This code has been here forever,
> but FIELD_PREP finds the bug when converted to use it. Change the code
> to do exactly the same thing but allow the conversion to FIELD_PREP in a
> later patch. To make it clear what we lost when making this change I
> left a comment, but there is no point to change the code to generate a
> correct sequence at this point.
> 
> This is not a Fixes tagged patch on purpose because it doesn't change
> the binary output.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/80003es2lan.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
