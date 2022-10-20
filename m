Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2F6606284
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 16:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0EDF84300;
	Thu, 20 Oct 2022 14:10:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0EDF84300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666275047;
	bh=lAmcHQ9D4w4zIujvglT/f4kfrXKniyGX8L7imOTmUX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2KiuI21LULFqZF1Uf4E+4Yacv9JIxSeoTdPDOeNXbjXfUQ334D1EkiW121WC3k02h
	 6g3aWtcMdtkYRGSB+fuR+n0FpHXEDLmFpw/H7Ev0R9ya5lPmTWMF1IhN73iYC9nb3e
	 /wxeoACsEkG2ANgmH8a6vbXhPy/qjOx8DlZ1M0RLNrDC7c5LjOxjYnNjDBZmjcm507
	 e9/7lVlNOES8/r6qjOEfSXXLksPVz96kV//DpL1UIryh908JfmxHjnmT8iJUxXxToP
	 KBotnTVD8M+MHD6yqV/uAO2rb6I8TtF33dsoA/waLehyRAzhHK8LmmcM31gwRbw/ta
	 l7oE4KhmpUvnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nacbraz2u3EG; Thu, 20 Oct 2022 14:10:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF7D18432A;
	Thu, 20 Oct 2022 14:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF7D18432A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE46E1BF287
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 11:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5D2D842E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 11:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5D2D842E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAhKUKmN9JDR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 11:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E22B9842D7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E22B9842D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 11:32:26 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-DPvR41mWOh-T65IYcGztyg-1; Thu, 20 Oct 2022 07:32:22 -0400
X-MC-Unique: DPvR41mWOh-T65IYcGztyg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0349F3815D42;
 Thu, 20 Oct 2022 11:32:16 +0000 (UTC)
Received: from [10.39.208.34] (unknown [10.39.208.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7713614588BD;
 Thu, 20 Oct 2022 11:32:07 +0000 (UTC)
Message-ID: <f48912c8-0a81-3316-4fed-05fc99be9355@redhat.com>
Date: Thu, 20 Oct 2022 13:32:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20221014085917.387247-1-mateusz.palczewski@intel.com>
From: Maxime Coquelin <maxime.coquelin@redhat.com>
In-Reply-To: <20221014085917.387247-1-mateusz.palczewski@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Approved-At: Thu, 20 Oct 2022 14:10:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1666265545;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7H/b7AjaIlTtNXGisJZ+wSEwmeve64bFmcDfWi0Fl4I=;
 b=FhKgXZTosI2trJVtj5TbTHP1nwqf5+Hr0faQaWKPievMDFgXCXh06lv4Oic/U3Seho7SHK
 JgktXeSJcrlueoDPheoiIh5xFcfU9thTgUJZZzq2pNOuz+zF/obUS2VnTwuzEGYehhMWq1
 7qAAa1aSDiW9o0x2aju4fF6XwEr6SsI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FhKgXZTo
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Add support Flex RXD
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
Cc: Michal Jaron <michalx.jaron@intel.com>, Xu Ting <ting.xu@intel.com>,
 Leyi Rong <leyi.rong@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/14/22 10:59, Mateusz Palczewski wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> Add new VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC flag, opcode
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS and add member rxdid
> in struct virtchnl_rxq_info to support AVF Flex RXD
> extension.
> 
> Add support to allow VF to query flexible descriptor RXDIDs supported
> by DDP package and configure Rx queues with selected RXDID for IAVF.
> 
> Add code to allow VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message to be
> processed. Add necessary macros for registers.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Xu Ting <ting.xu@intel.com>
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   v3: Changed target tree from net to next
>   v2: Added missing sidned-off-by tag
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |  2 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 86 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.h |  2 +
>   .../intel/ice/ice_virtchnl_allowlist.c        |  6 ++
>   include/linux/avf/virtchnl.h                  | 14 ++-
>   6 files changed, 111 insertions(+), 2 deletions(-)
> 

Tested-by: Maxime Coquelin <maxime.coquelin@redhat.com>

Thanks,
Maxime

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
