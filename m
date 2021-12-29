Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BF94815F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Dec 2021 18:57:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EDE240270;
	Wed, 29 Dec 2021 17:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q84dFne6Zd_d; Wed, 29 Dec 2021 17:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3F554025D;
	Wed, 29 Dec 2021 17:57:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27B241BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 14:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21E9E80D8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 14:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jj7FQ9rG2sx6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Dec 2021 14:06:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0631E80DB4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640786792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aO/4Yp6T43XLmNMDQP+OwTqaYv7whlIlyBDq4dbPFsg=;
 b=cIKLPwvkNFjDmUgRNlTNSevOZIBBFlut6kEpMOFbQCxhZU69gSHGNYnoRflhGuMChScNM8
 MLLIYy1Jlu4IaaAOR1/o9cyYzvZDtsUr3P0CyuY6juobcOPXCitDDK0ZZO06bxnwR6prVQ
 6vzpTZjOkHWBIWOV7rNOYbKxvNXjFuU=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-lcnwh3o3PDKc8szcC_973A-1; Wed, 29 Dec 2021 09:06:31 -0500
X-MC-Unique: lcnwh3o3PDKc8szcC_973A-1
Received: by mail-qv1-f72.google.com with SMTP id
 ge12-20020a05621427cc00b00410de1dc898so17173745qvb.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 06:06:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aO/4Yp6T43XLmNMDQP+OwTqaYv7whlIlyBDq4dbPFsg=;
 b=w2wDyy4ogBG/RbQghdpY+Gn29VrmcpeiGSAMPoPRhNrZd/N6Qawh58mZioMKqnkBIA
 NQw4o/N1TDJhy+iAyovICeoT/bQOWvCUGNzgZCfVC84e93AgP5JplKRbp8VUwRDGwSWY
 22g/vqoWXGRmaLcAZjjTf2KTBGQZWMZ7noqnNq6GLIUs1OmVGnojNfayNsT6gqqHlTrE
 0nwvRZ18Ald+QC5ba6udn39fv1ZTYW4rD/CUD+cevzUPj1t7+dKuXeYrFfUuyBPFd8k9
 QKzA5mRNNxJh0JLvTK6SlW56zA2AcY8o8oKwrFf/NFpvhWp81frry3OLIct7yrgMK9ai
 Hukg==
X-Gm-Message-State: AOAM531uYuFU4kShI+qFGSUWkZAUjewfMKCnZ1/KDWO1l77dl+tyrMe+
 r5al5BXv1l0dtygzs8bmi+G8VJt9dHLJD23XmUzd+MBt9mxXA5B1VvxYWXEWX1IF7tgU7OpYlla
 xV80ZAW+g7gHg/+ZZUEoLKrDGia7pkw==
X-Received: by 2002:a05:620a:4003:: with SMTP id
 h3mr18549144qko.153.1640786790482; 
 Wed, 29 Dec 2021 06:06:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyimHrQiLRtzxiuwvtJVztliA6HApJnsXsaqWdLb9ltPripN76oNC87N68Zld9IushfHCBQfg==
X-Received: by 2002:a05:620a:4003:: with SMTP id
 h3mr18549076qko.153.1640786790152; 
 Wed, 29 Dec 2021 06:06:30 -0800 (PST)
Received: from steredhat (host-87-10-236-9.retail.telecomitalia.it.
 [87.10.236.9])
 by smtp.gmail.com with ESMTPSA id h2sm18124352qkn.136.2021.12.29.06.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Dec 2021 06:06:29 -0800 (PST)
Date: Wed, 29 Dec 2021 15:05:57 +0100
From: Stefano Garzarella <sgarzare@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211229140557.cuap5jjqz47yevda@steredhat>
References: <20211229004913.513372-1-kuba@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20211229004913.513372-1-kuba@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sgarzare@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 29 Dec 2021 17:56:59 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2] net: don't include
 filter.h from net/sock.h
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
Cc: wintera@linux.ibm.com, andrew@lunn.ch, mustafa.ismail@intel.com,
 pablo@netfilter.org, ast@kernel.org, andrii@kernel.org,
 george.mccollister@gmail.com, ralf@linux-mips.org, linux-hams@vger.kernel.org,
 hawk@kernel.org, steffen.klassert@secunet.com, linux-s390@vger.kernel.org,
 pkshih@realtek.com, f.fainelli@gmail.com, herbert@gondor.apana.org.au,
 daniel@iogearbox.net, linux-bluetooth@vger.kernel.org,
 linux-rdma@vger.kernel.org, bridge@lists.linux-foundation.org,
 john.fastabend@gmail.com, kadlec@netfilter.org, jgg@ziepe.ca,
 dledford@redhat.com, coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 nikolay@nvidia.com, linux-wireless@vger.kernel.org, habetsm.xilinx@gmail.com,
 yzaikin@google.com, vivien.didelot@gmail.com, wg@grandegger.com,
 ath11k@lists.infradead.org, woojung.huh@microchip.com, johan.hedberg@gmail.com,
 arnd@arndb.de, marcel@holtmann.org, jhs@mojatatu.com,
 linux-can@vger.kernel.org, wenjia@linux.ibm.com,
 Marc Kleine-Budde <mkl@pengutronix.de>, viro@zeniv.linux.org.uk,
 luiz.dentz@gmail.com, jiri@nvidia.com, xiyou.wangcong@gmail.com,
 michael.chan@broadcom.com, virtualization@lists.linux-foundation.org,
 shiraz.saleem@intel.com, trond.myklebust@hammerspace.com, kvalo@codeaurora.org,
 linux-nfs@vger.kernel.org, leon@kernel.org, keescook@chromium.org,
 netdev@vger.kernel.org, dsahern@kernel.org,
 linux-decnet-user@lists.sourceforge.net, fw@strlen.de, tariqt@nvidia.com,
 kgraul@linux.ibm.com, ecree.xilinx@gmail.com, mcgrof@kernel.org,
 netfilter-devel@vger.kernel.org, jreuter@yaina.de,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, olteanv@gmail.com,
 saeedm@nvidia.com, anna.schumaker@netapp.com, ap420073@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 28, 2021 at 04:49:13PM -0800, Jakub Kicinski wrote:
>sock.h is pretty heavily used (5k objects rebuilt on x86 after
>it's touched). We can drop the include of filter.h from it and
>add a forward declaration of struct sk_filter instead.
>This decreases the number of rebuilt objects when bpf.h
>is touched from ~5k to ~1k.
>
>There's a lot of missing includes this was masking. Primarily
>in networking tho, this time.
>
>Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
>Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>---
>v2: https://lore.kernel.org/all/20211228192519.386913-1-kuba@kernel.org/
> - fix build in bond on ia64
> - fix build in ip6_fib with randconfig

For AF_VSOCK:
Acked-by: Stefano Garzarella <sgarzare@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
