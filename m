Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A117A3A83
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F100E861E3;
	Fri, 30 Aug 2019 15:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3XP3Ckb1tvI; Fri, 30 Aug 2019 15:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3E748929E;
	Fri, 30 Aug 2019 15:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54A9B1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D11184317
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oq3VAoj3UH44 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C548B87E8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:39:39 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id u17so3732722pgi.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=uNsHy93+wktGqXiYvmtr4b3L1IzhmZcwILohx4H4wmY=;
 b=lYbOj/IMhp9IDnPB+UO5RSpm+BG/867DPubItHr8tLkYK8nPELrQpatyEkw5DDqYct
 SamRSuB7mVvCx07R3gdfzHS9YsB/VIsyWHaLaf99M/6q+45ky/m7DqDIWKtd/b21ACJ4
 NWhRt4kusOTKSDWWNP2G1z1gzXUwPO8FJUIF5exjEElQggvkWYI690ewZ2cI5IrAUT0K
 4KlSsCfKcTmXqgE6UaxkxSIsAVWCrn1RFAL3SopWuaMs5VC4rYsYgVGOOIxuMrwCuiMH
 mnkL2dlV2Omx5Jv5AmAkMM7oLnCn6LHVdvoHIx6qK0qv7KjaaWg6NKPA+USzOxDknr84
 sFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=uNsHy93+wktGqXiYvmtr4b3L1IzhmZcwILohx4H4wmY=;
 b=Km7S9V5lZm/tJJJNZ3GLtWfJumIz53sBMghJ+SHxxVzP3HU1EAPGk5dAK0qKc+rJZ2
 nUWZt7SJ7uSDAkfKkptLUNZAhLr5GYlbmaGLPJ9E4EZptNxI2xPtI2h6bRh9PTt7OQy1
 SCAa06PESCYgdcb8Ct+RRRrofGPacsYqO5voweywm6sYNZSstjnqe1ShEW2mD6fM9m7x
 QjVA4+yz7t7fCjQhZaXSiiyw8vZwFy7o95ULiJOxpoy+0bpOyY85+qyfpoG5qorO/gWa
 Q1dv9ZxwN/fkugB/t96tzKvVzXuqX0yhH3+A4f4xIFIQ1ZTFz7+iX665DTeRz+jUULdL
 Jhqw==
X-Gm-Message-State: APjAAAU2UHA3l75Ei2rgTDfh1FeK90paP387pFp5MUqKWWobDhswOTpP
 W1mao0A177GrjbapacgYiS0=
X-Google-Smtp-Source: APXvYqxlW2ZBIKtt+d+rHt7P/b68lKF9GR0tkVHPkKDvM5IjUhG460DPrbB/kqDma0P56tXpVk3jrg==
X-Received: by 2002:a62:641:: with SMTP id 62mr18685092pfg.55.1567179579470;
 Fri, 30 Aug 2019 08:39:39 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id m145sm7171401pfd.68.2019.08.30.08.39.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:39:38 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:39:37 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <C44AEBC2-7D1B-4DEE-B2A5-CFEF4A571383@gmail.com>
In-Reply-To: <20190827022531.15060-3-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-3-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 02/12] ixgbe: simplify Rx
 buffer recycle
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

> Currently, the dma, addr and handle are modified when we reuse Rx buffers
> in zero-copy mode. However, this is not required as the inputs to the
> function are copies, not the original values themselves. As we use the
> copies within the function, we can use the original 'obi' values
> directly without having to mask and add the headroom.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
