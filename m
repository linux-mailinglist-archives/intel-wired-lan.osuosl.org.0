Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 058B7BDCEBD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 09:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE0DD405A3;
	Wed, 15 Oct 2025 07:22:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jIpZYAlmtFMf; Wed, 15 Oct 2025 07:22:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27EE0405A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760512955;
	bh=NOh/hSiyipCGjycDVwsakEFwHEbhsG2mzmcxcktrG9c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=571+Gi6DWkI1I3GXI23v9f93zoMlzavKC5tTL/Nl8NKyeycfi7/1SOKKzsyjzKSXR
	 f641DAhT5yw6b4REl0hFHYKgWM17g2fssm/8d3BlhpF86oCfOctpOBS4LYlLQ1A9Du
	 MsN/jwdZzgY9cfgb4xiVN/6NooguUc1gPLCLQNEqgmmrkKG9VZOB0VJyXkpb8pFH9W
	 Ps8u959O9C5lM5MQug7O+rLBpExXvf0ItjVWAdNKYN2STsEJLf4KKdgDuU9C2Utbny
	 a39j2AqEVvvLqjSPABGTIWc6f2rvZL3DDTon+J1uANOMXPY2e8hU0HL/fKQOLxiHbb
	 Apz5UbzN38/gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27EE0405A6;
	Wed, 15 Oct 2025 07:22:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DA711BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 07:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53B6F40860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 07:22:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GlCP6S1agi3b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 07:22:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1797F40856
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1797F40856
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1797F40856
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 07:22:30 +0000 (UTC)
Received: from [192.168.2.212] (p57bd968e.dip0.t-ipconnect.de [87.189.150.142])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7CE5161E647AB;
 Wed, 15 Oct 2025 09:22:15 +0200 (CEST)
Message-ID: <a49a045c-b01a-48d2-a02c-23540f799f8a@molgen.mpg.de>
Date: Wed, 15 Oct 2025 09:22:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
 <20251013231341.1139603-4-joshua.a.hay@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251013231341.1139603-4-joshua.a.hay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 3/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Joshua,


Thank you for the patch.

Am 14.10.25 um 01:13 schrieb Joshua Hay:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Move both TX and RX queue resources to the newly introduced
> idpf_q_vec_rsrc structure.

What is the motivation for doing this?


> While at it, declare the loop iterator in loop and use the correct type.

Please make this a separate commit, as the diff is already big enough.


Kind regards,

Paul


> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8:
> - rebase on AF_XDP series
> - remove dev param from rx_desc_rel and access through q_vector
> - introduce per queue RSC flag to avoid vport check
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        |  69 +--
>   .../net/ethernet/intel/idpf/idpf_ethtool.c    |  91 ++--
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    |  71 +--
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  17 +-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 451 +++++++++---------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  21 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 258 +++++-----
>   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  12 +-
>   drivers/net/ethernet/intel/idpf/xdp.c         |  37 +-
>   drivers/net/ethernet/intel/idpf/xdp.h         |   6 +-
>   drivers/net/ethernet/intel/idpf/xsk.c         |   7 +-
>   11 files changed, 561 insertions(+), 479 deletions(-)

[…]
