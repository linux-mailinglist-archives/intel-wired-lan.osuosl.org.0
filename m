Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF5799A020
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AADB981277;
	Fri, 11 Oct 2024 09:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ei6yqTrn0umA; Fri, 11 Oct 2024 09:26:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA59981266
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728638768;
	bh=P+YWBi/NF4XHbVVKXVfXRgwaxoIBhT12XyixnJaAsUU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Igzny+2oQAsBud+a2LMH0Fzm+yp0M86Dw4MkTaUODKCAFQ+8d+Nh6skE3zZ5apnqZ
	 W6bqQjz/To0rTaoexEEzfcJ8CRGEpX7glZxKSOXI9LkVDcWCaNCjT1yJlQvKXMdd24
	 q1b3U0m6XmXJPhuBqt2Br7pDYu5TpjvEJ1bWEjjKNHTtlvxo/r9h9dKqZiUS42GMy3
	 xxn/vRkPLM5o0C6cZG0ZSdRalDIfButA3VupU5RA2kwoHelRG7i09EiWIx4Af+IiCw
	 GwZrNvxYMsD+gPtQnPtiC2NwLSc71EknAvPHsJFtdPTMWPdThbZwvduFAxTI+4l2nv
	 8SdCMPa692+aA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA59981266;
	Fri, 11 Oct 2024 09:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 500361BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B5CD81274
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:26:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zqu_YQ1c2tMr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:26:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8253081266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8253081266
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8253081266
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:26:04 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-352-VevBD9oeMtySLA04I0bPKw-1; Fri,
 11 Oct 2024 05:25:59 -0400
X-MC-Unique: VevBD9oeMtySLA04I0bPKw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 6531F1955EE7; Fri, 11 Oct 2024 09:25:58 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.193.246])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C4CEF19560AA; Fri, 11 Oct 2024 09:25:57 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 52DE5A809D6; Fri, 11 Oct 2024 11:25:50 +0200 (CEST)
Date: Fri, 11 Oct 2024 11:25:50 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: christopher.s.hall@intel.com
Message-ID: <ZwjvHhptaNBirnea@calimero.vinschen.de>
Mail-Followup-To: christopher.s.hall@intel.com,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240807003032.10300-1-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728638764;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=P+YWBi/NF4XHbVVKXVfXRgwaxoIBhT12XyixnJaAsUU=;
 b=L3ciS+Rj5kKGvDeA58bOq7ZSCpXjhj8Kh3fCCzC0CW/mh6mvCbbKAJGG1nBgwNoXY++DJ+
 9MU4KCS1vIJQMWgIqJX80nGExR16dLA4Cr/+9kH1TFp/aKVQjveYO4wPF+BQBBgUGOriMp
 PuFTx6LlLqJrFKBf0MqN26YeDGFgmq0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L3ciS+Rj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/5] igc: PTM timeout fix
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
Cc: vinicius.gomes@intel.com, netdev@vger.kernel.org, david.zage@intel.com,
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Christopher,


are you planning a followup to this patch series any tinme soon?


Thanks,
Corinna



On Aug  6 17:30, christopher.s.hall@intel.com wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> There have been sporadic reports of PTM timeouts using i225/i226 devices
> 
> These timeouts have been root caused to:
> 
> 1) Manipulating the PTM status register while PTM is enabled and triggered
> 2) The hardware retrying too quickly when an inappropriate response is
>    received from the upstream device
> 
> The issue can be reproduced with the following:
> 
> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
> 
> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
> quickly reproduce the issue.
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> Christopher S M Hall (5):
>   igc: Ensure the PTM cycle is reliably triggered
>   igc: Lengthen the hardware retry time to prevent timeouts
>   igc: Move ktime snapshot into PTM retry loop
>   igc: Reduce retry count to a more reasonable number
>   igc: Add lock preventing multiple simultaneous PTM transactions
> 
>  drivers/net/ethernet/intel/igc/igc.h         |   1 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |   3 +-
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 100 +++++++++++--------
>  3 files changed, 63 insertions(+), 41 deletions(-)
> 
> -- 
> 2.34.1

