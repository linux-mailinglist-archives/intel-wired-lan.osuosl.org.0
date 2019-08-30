Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B20A3ACE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:46:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FED18723D;
	Fri, 30 Aug 2019 15:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A7vNJK3gBdtz; Fri, 30 Aug 2019 15:46:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A98E870E0;
	Fri, 30 Aug 2019 15:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E13C21BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDCE787E95
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0K2xFxbocflQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:46:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7921587E3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:46:28 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 205so2428696pfw.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=b7/sQrlJCB5Ujd8MG7PuZ8VzWLXpJows6OjSWqD3k3o=;
 b=tdJxplD7co3xJLSUoz1ZWfvVWP6+28apE7DuWScouTvelbRhl9rMeij+5CX8++qUAm
 QbzTtL25kt+tbbArJTBSTNvNfC7Er+FYJ95lBcW/w+k6i6/qRVLiO0GJ2UaHulBPvQS1
 0j8INwfo6oNCqlBHgZHyp0tmcEAhizoCI0RW7Mmwte6389xyMPRYksvJcicDEuLT+98L
 ketU8JjU98sDbSrxgoHMUebj3pYfu4ZgbC+O4fFv0RH4iRaeCIf7O4ZpirvHbnUFYqEu
 ZpeqTyEM/Ovs00OFU0e9Rggmi/w2MFH9NsxyGazlSnWF5cD3OLn1A07wLO1NvyfWnrMB
 /qYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=b7/sQrlJCB5Ujd8MG7PuZ8VzWLXpJows6OjSWqD3k3o=;
 b=NUbTvPu+A3jeukO+pkaTvI8QoQWnrtFg5z6LUzdHCfZUQMzis66phhWMBselKDoTID
 GuZ/MF02M6vz+6vwmGy3YEdiWM1E8rZYwKN7rbU6SQaW/SvtSDDdvlOoIm1NOwbCYXyp
 3hPQCPZwNvevzq13Wa+8+norFEW+pBJp35BBxIAE32Ifkr+V3hTsce6IVYAPy0JoQZtt
 1omvsXMYi8WLG6jpmDD9EnXQW/mCqZm16fehlG1NfIq0U5oBObU9SmKfUVUB2wa60stO
 nW2LBnQBMQYFX4q6FlwJ8Ou6dQV0EE0kAg8vL7NKV2BeDRM5JqAcDMXYjz9/gJJBJ+3y
 YWOA==
X-Gm-Message-State: APjAAAXoPknd64n2KLWTw/OXYY3mpJbGaZFTx32JtB5zoxK6e5nK2WwF
 bO0mfsCYua/A365g39QA/b4=
X-Google-Smtp-Source: APXvYqxkaR8iAjrJq3grreu8mVOcL+lHZwNOYQhEm4z7xXijUgEkgnfICDRrjqiAQI9NcJUNPtxY5Q==
X-Received: by 2002:a63:5550:: with SMTP id f16mr14088780pgm.426.1567179988070; 
 Fri, 30 Aug 2019 08:46:28 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id q3sm7812979pfn.4.2019.08.30.08.46.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:46:27 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:46:26 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <97813612-8FA6-4A33-B4FA-CF7A99FFC012@gmail.com>
In-Reply-To: <20190827022531.15060-9-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-9-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 08/12] libbpf: add flags
 to umem config
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> This patch adds a 'flags' field to the umem_config and umem_reg structs.
> This will allow for more options to be added for configuring umems.
>
> The first use for the flags field is to add a flag for unaligned chunks
> mode. These flags can either be user-provided or filled with a default.
>
> Since we change the size of the xsk_umem_config struct, we need to version
> the ABI. This patch includes the ABI versioning for xsk_umem__create. The
> Makefile was also updated to handle multiple function versions in
> check-abi.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
