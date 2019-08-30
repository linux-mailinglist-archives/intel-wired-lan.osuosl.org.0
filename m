Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CBFA3AA5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3462D87319;
	Fri, 30 Aug 2019 15:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPAIyhs2r5UQ; Fri, 30 Aug 2019 15:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86659872D1;
	Fri, 30 Aug 2019 15:42:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D28061BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE8FC87239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1t1hJ1bDzvUL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:42:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A60618713D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:42:49 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w11so3560118plp.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=IZK133rvLPFOXdT1nth00dyTGLOoSKiaU2rUxXtqO8Q=;
 b=VuTxARF1T1QleDYqDcJQPzhgXTCw85eSxY26+Hh1yCqIy1SHUspXMjuo4l1TGA75SV
 BZm+4WBy3aWO640xWNGhPEy5iQ+9pLhylJgLWHMiSR/5INL//0NTDt1ug+tSe1d6eKzS
 yTPBxQ+3QfNTnVGMBDqlsScJBX0lf0nvF5Kl8k7ejc9TUf2o+ByIQD0CmZBrp7wgcRrp
 bo+FR4t52pCGDQTSNqONEubdog44dYtFf/ClX8X4M3hWI3b1zDlJj78LJnC2+j6AVG10
 ACDvKLcWRNAy0uz1a/41CWLPIj+8FXB2smJA2JjmYdYFl0JlvTQlXacNc51FEJlSZHQ3
 jv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=IZK133rvLPFOXdT1nth00dyTGLOoSKiaU2rUxXtqO8Q=;
 b=h1zK05oIBmIAjrua241fyWgnnNnfeVPxmmeFSZ9OcRrus1ovic7PGwoDkalA4ajNwm
 jQaYwf3mUaZdIUhXJf0UyZyB7XhEz1ex1zTRH7nnVwJhiFvQ4Lnr78I1Dl1UCbputLuo
 otCR2ZxAYffm3tkIdiVKo1kLxwvF89AF78SXCMfp0VRcFFKtT0SNbjj5O+GZcsti/1yj
 Sn2+rTHk0BYLTs9tO3oX4+VotAPaMzjLk/ln3tKeLzj/GlLb2qM5wa8icVwhSjMolgU3
 RDZNieB6Fg6jMDGmzfPTNClTeXdhXuspTvfkaEEFQGGkTwE+Byl00QkFY0VfU2aWuTx9
 Rixw==
X-Gm-Message-State: APjAAAUEJYkQGOSPOs3ZAYrTVTXDYAxl0LqrlvIJYttMT7361KMF865D
 DoygQsTX23AR+x9o/o0sG/A=
X-Google-Smtp-Source: APXvYqw/+bPQywjqon9wScZJzLXOScWoq0YFcZPuTDgX6BIFmkMdLuno9VKUxorEGVTYjPCRq2Yk6w==
X-Received: by 2002:a17:902:f64:: with SMTP id
 91mr16367396ply.334.1567179769383; 
 Fri, 30 Aug 2019 08:42:49 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id d11sm8579760pfh.59.2019.08.30.08.42.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:42:48 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:42:47 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <14CCB060-4354-462E-BCCD-F6CE7A02F688@gmail.com>
In-Reply-To: <20190827022531.15060-6-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-6-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 05/12] ixgbe: modify
 driver for handling offsets
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

> With the addition of the unaligned chunks option, we need to make sure we
> handle the offsets accordingly based on the mode we are currently running
> in. This patch modifies the driver to appropriately mask the address for
> each case.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
