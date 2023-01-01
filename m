Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6FC65A9C5
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 12:34:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12FA960E5B;
	Sun,  1 Jan 2023 11:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12FA960E5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672572850;
	bh=pPtnuZwD1VkXRKLPaa9/GAJNs1YBtaYj2kwkiaLNhms=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GJ6xipZNT43yODb5vbfF4VC7Vxs3H/YiYOyTAByr16/MR0JZ70LAtrNL4NZBLNEV8
	 JQC7dJZYh7c+jJS/H95QtVcccGnAkqeUUiKDLqoZ7mrdUUDzqlkDbzkAXJI9qksfZE
	 pVZuMlP6c6I4nJYlvqRVWxtG6pZZxTj7ODXoAI4Gn+2Dleebt5DdjBR2r7kTSLyWBo
	 JKBhWnEBtx8d4svAXJVf43EVsrjP4OmMmi0RFfb5zlKFqhhUkUP4dPYLMLtn6KTMES
	 +QyLzUlXzcFQ4XnzKlWaXSlouqTbSZEYI30DycSQ9y6B0bn5Fu6B66M6CPjKm3mXxa
	 IWYUThSfA7fSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AslQc0V8Bq76; Sun,  1 Jan 2023 11:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E60160E53;
	Sun,  1 Jan 2023 11:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E60160E53
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DE4D1BF29C
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 221D260E53
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 221D260E53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k4dtpV-RBN06 for <intel-wired-lan@osuosl.org>;
 Sun,  1 Jan 2023 11:34:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5834660E52
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5834660E52
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:34:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="319077612"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="319077612"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:34:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="656247315"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="656247315"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.251])
 ([10.13.11.251])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:34:01 -0800
Message-ID: <dfbb5d4f-2d95-b1f4-ee1c-ecd45c533ee5@linux.intel.com>
Date: Sun, 1 Jan 2023 13:33:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org, vinicius.gomes@intel.com
References: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
 <20221214162909.22856-3-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221214162909.22856-3-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672572843; x=1704108843;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sdumI3jQuEE/YB6Hhv+PgUVzBPObHXp8Lx+Hoz5D9WI=;
 b=Yr3oz5IF4Sl5/fZJWaxHPXSzEkWQx7i9PHK4DiSgOzkj5pARIe3ig5ej
 HT5LIKDJ8hc6nwV0DAobiLL+NxJuK81DkraE7zUp02KpKIy6yaJAgKfm6
 pMGGItnGd9YH38POKekygHa+fmd9252EorLQTfjJ6T3VAFzH+eDcqNdTZ
 marYTgbt/oLrghhhPNKI8m4GJ0Ca8wp4sRJsUETJnv8bN7yrhrAcraQxx
 fPdmR3Sz0vDxw8gWRKpVKiGBgEyX0tZXA3d42g/qJVRdjlwcLt5m9MjxW
 B+ua1UpSka/uPOKKO8HWv+JftEylBPb+C2Bnt6McoHH4JhA+8c8da6LU7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yr3oz5IF
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] igc: enable Qbv
 configuration for 2nd GCL
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
Cc: anthony.l.nguyen@intel.com, tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2022 18:29, Muhammad Husaini Zulkifli wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Make reset task only executes for i225 and Qbv disabling to allow
> i226 configure for 2nd GCL without resetting the adapter.
> 
> In i226, Tx won't hang if there is a GCL is already running, so in
> this case we don't need to set FutScdDis bit.
> 
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c |  9 +++++----
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 13 +++++++++----
>   drivers/net/ethernet/intel/igc/igc_tsn.h  |  2 +-
>   3 files changed, 15 insertions(+), 9 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
