Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B72A3698F63
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 10:11:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10C1B81FD3;
	Thu, 16 Feb 2023 09:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10C1B81FD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676538663;
	bh=NB7wKzB0xu8/1lEyZ2zHsGA73piECWzKzu54E59EX94=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t82O1u9z9k4xhDuvLAl6KxW58A0jlaIZgi07ub8/hWBHLJLJWhdVaIRPE0W/lOyeM
	 R+Nen/IUwwKhEplEKvI2h84juRC7tLbDNch4uQ8FuPW9mIyHk+eCeY8mPG3GYGxlcF
	 AKBMGVNUKfY/lvJtuK15fuCgpiw6DGrdt2e9X66pPT6vQSZHRWsQxkTETxW3pGvN0l
	 n5atylrS10pftNJRqFY2HmYTZ9WXkiX6UxDb4MpWa/Z1Qqa641LnX3sw6CD7jOYBgg
	 0DJC/f9XMyA3g99Nbf3hAkliEX6hO4NsQ1WwIuu464L+hS7R8Ps620xCvYjwv8Z3Iy
	 +utKO/FzFWdrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBfkm03ceCyn; Thu, 16 Feb 2023 09:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F2C081F8A;
	Thu, 16 Feb 2023 09:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F2C081F8A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81A651BF82D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 09:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AB63611C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 09:10:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AB63611C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGUy1PfJ-8AW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 09:10:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98F8A61181
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98F8A61181
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 09:10:56 +0000 (UTC)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-647-JlGRHUY0PRuh0VS6f4ub6A-1; Thu, 16 Feb 2023 04:10:53 -0500
X-MC-Unique: JlGRHUY0PRuh0VS6f4ub6A-1
Received: by mail-qk1-f199.google.com with SMTP id
 bp30-20020a05620a459e00b00738e1fe2470so803135qkb.23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 01:10:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LM/k6QEKCDHsmvPp7/LX9C3KUoNmJ3MdfN4YDZpArYY=;
 b=bOEqL8yegC6C5mB9022ij///czGRn9FJ064DkeQTD5zHCnRC/uZ0BqGcPVquhj9v/O
 Sj0D2azeqKKbi5vHXsDFUzTonaiJQrXWQ+8F7QhQpaOYxBhQTGwjD/UMJPK0c5KOFHin
 f+NS+3WCklWz2Inf2bh3itbgy2eGDwPvpqFOBSGtuGoJlZL6QYna8LQt/3ppXAilxxRN
 ZXuG6qsVsns8QLb7iV7n/CMWS2anqtpQ1HSfZ4fFJqOrQLbxrFkK/a/miwDcM1sVVcPu
 6SumFzjory0uORPTTWw8UVi9PFKWgTRA8SONaJzX1pFyf7B5uTThU7U1lyQND3LZKZ0s
 o6xA==
X-Gm-Message-State: AO0yUKXpgNp3RtI6IL5JN0F9RwNRT9ObQ2FWEmPp4nEmYg58Xuv5OhhA
 Suqn5j/r0j6M22z9MEZ4BgSRxg78lVrzWzfGOm9Z5crpHbnSpDmtmSnvmfvJCJweGwyFN3y7Ed6
 q/DXGoVZTuYaQGGRRu24ng52CLTj+IA==
X-Received: by 2002:a0c:f393:0:b0:56c:d9e:c9a0 with SMTP id
 i19-20020a0cf393000000b0056c0d9ec9a0mr7657754qvk.1.1676538653324; 
 Thu, 16 Feb 2023 01:10:53 -0800 (PST)
X-Google-Smtp-Source: AK7set962i1JkfbW/P3g1lxZO0XxXk9C3rsZX/Vc2olLm/AU5K0fr5wQWdCFipxEatsAOteEJSMo6g==
X-Received: by 2002:a0c:f393:0:b0:56c:d9e:c9a0 with SMTP id
 i19-20020a0cf393000000b0056c0d9ec9a0mr7657730qvk.1.1676538653028; 
 Thu, 16 Feb 2023 01:10:53 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-121-8.dyn.eolo.it. [146.241.121.8])
 by smtp.gmail.com with ESMTPSA id
 p187-20020a378dc4000000b0073b6c46f048sm801227qkd.68.2023.02.16.01.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Feb 2023 01:10:52 -0800 (PST)
Message-ID: <89c60b9f14e3450f14a5337e8dfd6c3972c7be22.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, kuba@kernel.org, 
 davem@davemloft.net
Date: Thu, 16 Feb 2023 10:10:50 +0100
In-Reply-To: <20230214210117.23123-3-jesse.brandeburg@intel.com>
References: <20230214210117.23123-1-jesse.brandeburg@intel.com>
 <20230214210117.23123-3-jesse.brandeburg@intel.com>
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676538655;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LM/k6QEKCDHsmvPp7/LX9C3KUoNmJ3MdfN4YDZpArYY=;
 b=RQpeg3ZfhLAxN9pH7yc0I/nZHxX2pbqLMoDPNfsNk+lcH+MpYW5EV0zm5fR99eAKnGaRAa
 5NXy1AEJczz11NJ6WgvrQ3c5qu83tvAmGzKeI8ivGUgCovxeTp6eDzTmM9wYsbFlwMzsrc
 m5EdStgAl9nje9flpaol+tF39myVm94=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=RQpeg3Zf
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] net/core: refactor
 promiscuous mode message
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-02-14 at 13:01 -0800, Jesse Brandeburg wrote:
> The kernel stack can be more consistent by printing the IFF_PROMISC
> aka promiscuous enable/disable messages with the standard netdev_info
> message which can include bus and driver info as well as the device.
> 
> typical command usage from user space looks like:
> ip link set eth0 promisc <on|off>
> 
> But lots of utilities such as bridge, tcpdump, etc put the interface into
> promiscuous mode.
> 
> old message:
> [  406.034418] device eth0 entered promiscuous mode
> [  408.424703] device eth0 left promiscuous mode
> 
> new message:
> [  406.034431] ice 0000:17:00.0 eth0: entered promiscuous mode
> [  408.424715] ice 0000:17:00.0 eth0: left promiscuous mode
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> I'm unsure about this one because it's changing a long standard kernel
> message to a slightly different format. I think the new way looks better
> and has more information.

I guess the relevant question here is if such kind of messages are
somewhat implicitly part of uAPI.

AFAIK the answer is "no", at least for info-level msg, so the patch
LGTM.

Thanks,

Paolo


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
