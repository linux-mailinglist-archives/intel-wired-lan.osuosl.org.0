Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D26E64CC091
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 16:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5520360B0B;
	Thu,  3 Mar 2022 15:01:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tX9mUoYXYxHC; Thu,  3 Mar 2022 15:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5924B607CE;
	Thu,  3 Mar 2022 15:01:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D47C1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 02:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F298441557
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 02:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WqJPOMVrEEcr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 02:27:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA5004151D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 02:27:53 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 15-20020a17090a098f00b001bef0376d5cso3547354pjo.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Mar 2022 18:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C6016/38QKZUQAyk5HMPjenTvm42Pe8sPBzTcqL5vmY=;
 b=qBGtve+IuFrAkJa+gsN1WQjHRs2fvQkSK1D44BenBKAqsyswWIPF49CjeAw6Lc/Xiz
 7VY9uX10GWOeYOq3Roffx9lK59MGCnSnWmLkHD6Zz3XGADMqQbIXFAspvzlfyt7tl87F
 C44YITS/y0gKUKqqxM42VKL4jH/Xx4KasojD++jZOWXtcwkx1m//DlSoFwhQEbp4i/NS
 eGEaCL2abI9d2Qo/vgVE47lljuFHl9RIsYb9haWI9DYl1+oIMHXMK3O9uyeK26H4D1AX
 Jy4saNgfSyFkb5FP8pbKE6ds3BSqIpGBCoZu+qijzq/vfSl1dGYXTnehjmH9/ySByi+z
 BIOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C6016/38QKZUQAyk5HMPjenTvm42Pe8sPBzTcqL5vmY=;
 b=OY0O7Nh5CnMjsTri8DuJBfVAjxuZ+LmE/qtmJS6gfdh14rYTzjW1S4q/iJtit1YEni
 ghg53w4urys8A/qBUs5s5nX3gTg4ULGPJ2hDLFE7E3TQFaM+FLnBAj5ZDsy0MmwYapYG
 BQedw7Ida3GqjgzLTnA56F4/eIjrRQOxUulmXXZuuejOO1vXdzqTULLL9LLMqYhou6wq
 e3H8Y0q+9L/o/k9zk76WfzuQgewunT4Ihg0pLnIGZjRrRkhdTvp4Zqe8XgcV00Q0KwcO
 5E1LRx2EcaJxw0xUk3PhB5uq+1mlKb2ViFJnai4NB2IZ+pdw/Dp+O1sszRHL4QQEV1cL
 xWyw==
X-Gm-Message-State: AOAM532u3euxeYHgHeKotjrC5ZJ1Ldbra9IWK+BwafRin7+PVkJp+m7/
 XGpsMBkbNVPWwb3QQybHjes=
X-Google-Smtp-Source: ABdhPJwdGKGtPoJbq9KB0b78P8kOQOqlHazHAUCZQHvA6TzNHcldJErwW75BUHOqmaVxrll88UvLqQ==
X-Received: by 2002:a17:902:ec90:b0:151:a632:7ebb with SMTP id
 x16-20020a170902ec9000b00151a6327ebbmr1936164plg.154.1646274473191; 
 Wed, 02 Mar 2022 18:27:53 -0800 (PST)
Received: from ubuntu.huawei.com ([119.3.119.19])
 by smtp.googlemail.com with ESMTPSA id
 d15-20020a17090ab30f00b001b8e65326b3sm359822pjr.9.2022.03.02.18.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 18:27:52 -0800 (PST)
From: Xiaomeng Tong <xiam0nd.tong@gmail.com>
To: david.laight@aculab.com
Date: Thu,  3 Mar 2022 10:27:29 +0800
Message-Id: <20220303022729.9321-1-xiam0nd.tong@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1077f17e50d34dc2bbfdf4e52a1cb2fd@AcuMS.aculab.com>
References: <1077f17e50d34dc2bbfdf4e52a1cb2fd@AcuMS.aculab.com>
X-Mailman-Approved-At: Thu, 03 Mar 2022 15:01:47 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org, linux-iio@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, linux@rasmusvillemoes.dk,
 dri-devel@lists.freedesktop.org, c.giuffrida@vu.nl,
 amd-gfx@lists.freedesktop.org, torvalds@linux-foundation.org,
 samba-technical@lists.samba.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, h.j.bos@vu.nl, jgg@ziepe.ca,
 intel-wired-lan@lists.osuosl.org, nouveau@lists.freedesktop.org,
 bcm-kernel-feedback-list@broadcom.com, dan.carpenter@oracle.com,
 linux-media@vger.kernel.org, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 bjohannesmeyer@gmail.com, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, christophe.jaillet@wanadoo.fr,
 jakobkoschel@gmail.com, v9fs-developer@lists.sourceforge.net,
 linux-tegra@vger.kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-sgx@vger.kernel.org, nathan@kernel.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 xiam0nd.tong@gmail.com, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, christian.koenig@amd.com, rppt@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2 Mar 2022 14:04:06 +0000, David Laight
<David.Laight@ACULAB.COM> wrote:
> I think that it would be better to make any alternate loop macro
> just set the variable to NULL on the loop exit.
> That is easier to code for and the compiler might be persuaded to
> not redo the test.

No, that would lead to a NULL dereference.

The problem is the mis-use of iterator outside the loop on exit, and
the iterator will be the HEAD's container_of pointer which pointers
to a type-confused struct. Sidenote: The *mis-use* here refers to
mistakely access to other members of the struct, instead of the
list_head member which acutally is the valid HEAD.

IOW, you would dereference a (NULL + offset_of_member) address here.

Please remind me if i missed something, thanks.

> OTOH there may be alternative definitions that can be used to get
> the compiler (or other compiler-like tools) to detect broken code.
> Even if the definition can't possibly generate a working kerrnel.

The "list_for_each_entry_inside(pos, type, head, member)" way makes
the iterator invisiable outside the loop, and would be catched by
compiler if use-after-loop things happened.

Can you share your "alternative definitions" details? thanks!

--
Xiaomeng Tong
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
