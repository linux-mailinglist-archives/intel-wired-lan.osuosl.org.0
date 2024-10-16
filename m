Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA2F9A0013
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 06:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C14280F03;
	Wed, 16 Oct 2024 04:17:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlrlOVEdGNIP; Wed, 16 Oct 2024 04:17:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7FEC80EF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729052251;
	bh=sZKtQZPbO3zSZQcaUAaB4/EpiISfpgA+kFvcNCU/rRU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MkmkbpW1fKko7yRiqqx4ZET/Q9QqdFK6PxbG8ykpuiyIPy0a5EDENsH7jzpZlmjTQ
	 2Ku0ZOWryW3ojx/LXDg3kQImJAwJzJms+IC/oY0MrsO4bL8kf0SQVi3yF0hgtYsoeM
	 etGYOhiVAPWzsoJ9aPO8APOcrmzVxoL9mUrhdktqryYhKDwnoruq1hhBmdR0jgPFeW
	 djVCEBM5ZLs//CPbHJTcxc9LzLeyRqDmIH2vT8IjJOoPclL0ay/9RYtuagEAhj8C7d
	 oNgesIDUlAry1hz9lbjcBEvakMdsxswvKlh5W4K+hI6Jbq0syNEN5LjiTa9kgoMcfa
	 /7Ab8o31bpiJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7FEC80EF9;
	Wed, 16 Oct 2024 04:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B5CA627E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 04:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F46D4040D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 04:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qAfgXBRFjdbB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 04:17:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BAD640135
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BAD640135
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BAD640135
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 04:17:27 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5ae84f.dynamic.kabel-deutschland.de
 [95.90.232.79])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C8A7261E5FE05;
 Wed, 16 Oct 2024 06:16:56 +0200 (CEST)
Message-ID: <2aa7370c-648d-4353-8f49-555af4391d6b@molgen.mpg.de>
Date: Wed, 16 Oct 2024 06:16:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
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

Dear Paolo,


Thank you for the patch. I’d remove the dot/period at the end of the 
summary/title though, and maybe I’d be also more specific:

virtchnl: Introduce padding field to fix m68k build

Am 15.10.24 um 15:56 schrieb Paolo Abeni:
> The kernel test robot reported a build failure on m68k in the intel
> driver due to the recent shapers-related changes.
> 
> The mentioned arch has funny alignment properties, let's be explicit
> about the binary layout expectation introducing a padding field.
> 
> Fixes: 608a5c05c39b ("virtchnl: support queue rate limit and quanta size configuration")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202410131710.71Wt6LKO-lkp@intel.com/
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
>   include/linux/avf/virtchnl.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 223e433c39fe..13a11f3c09b8 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -1499,6 +1499,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
>   
>   struct virtchnl_quanta_cfg {
>   	u16 quanta_size;
> +	u16 pad;
>   	struct virtchnl_queue_chunk queue_select;
>   };

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
