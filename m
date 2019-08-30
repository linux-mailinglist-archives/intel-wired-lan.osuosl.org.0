Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE48CA3B06
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FA86892A4;
	Fri, 30 Aug 2019 15:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H8G3QF9ju79C; Fri, 30 Aug 2019 15:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 684FA89350;
	Fri, 30 Aug 2019 15:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 797761BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7597589339
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hoCb5BAVNEgT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:52:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 05E53892A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:52:35 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f19so3561368plr.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=3aRbcb7mxKQhl3wvmytYCrnDqahAtopYovMiaFP7Dy8=;
 b=rgJ6w8Z7MmdO0Hp0qryaIgI2vza5UivQ0SOUdnJpS1vqPLzqjk8fuGUPSsXsqKVpye
 uWqB2Xd4dFoNdamuvDf6zbqYNb8fVTvv6RM7UNMycIsZqrppP+bVcvaHsMkHkDP7C2Hx
 OI70ReTP+yE72H5kd+X2HLXTT9z16DsWK2M5oygh588jg1sP7WZ6rZqkUOHSI2aSKOyL
 imyr/NYOixwQF8+4WfrSb7KCUQ2qvu8+2R19sq0FO3egqMqFg79X/q/rt0u99WtQJBy3
 e4SAAUkJhnYQGGkzs1TPrnhFdP6X05RmoQ/I/qARjdGj0oiL7arQl4BRlRzeVQcBUq2Q
 TM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=3aRbcb7mxKQhl3wvmytYCrnDqahAtopYovMiaFP7Dy8=;
 b=OqNqrw2l3UkytkE+jMP1uI8cmw+E26KwFysksQULtgPX4tLmf3/icapyyOXVuokOcQ
 gR6qNVPemDu5dOwNT80FSNkhjhaH1XuC9n1EkJUQ3ClSGaHVOWcHSkrmIsNTgDaXoWTx
 0LvJE4A/3aaCiwmA4kFmjNqmZFEDXP32ekh1Qszw85ovtKg8gTQzja57oRM5UsmXSz1Y
 NzGqhOoi07PzVt9QpCKwbmoii3rgLucTa7MMSOjxg7WQs6t70D5rLhhL8+g4Vn/8HInE
 jmN1u7HXLaZEW9+gjBziQg7laziR6mX4uiUfmSkR4XbYmCapLYRnRgc9cI/o1lCJac5X
 FQDg==
X-Gm-Message-State: APjAAAXqFiq+8xAqHpYR8vW9CjPClSS9pQ7sm27KEGamRsu4PlxVdhss
 6e87i7amjmrsp91YwHsI+GQ=
X-Google-Smtp-Source: APXvYqxBKMNukScLMmC9gZpQf+27nAE4AepJTruMT6n2P7I8TuROlQ9AdU2fRT8efHkSAak4hUNxHA==
X-Received: by 2002:a17:902:780c:: with SMTP id
 p12mr2079429pll.290.1567180354650; 
 Fri, 30 Aug 2019 08:52:34 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id r2sm4248607pfq.60.2019.08.30.08.52.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:52:34 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:52:32 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <542303AD-5786-4184-8B4F-075DD945F4C4@gmail.com>
In-Reply-To: <20190827022531.15060-1-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 00/12] XDP unaligned chunk
 placement support
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

> This patch set adds the ability to use unaligned chunks in the XDP umem.

Thanks, Kevin for your hard work and perseverance on this patch set!
-- 
Jonathan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
