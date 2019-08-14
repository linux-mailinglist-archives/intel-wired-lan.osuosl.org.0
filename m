Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2B08E0BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A353F877D0;
	Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24GeEyZ5qXuA; Wed, 14 Aug 2019 22:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F645877CE;
	Wed, 14 Aug 2019 22:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51B711BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44E65864DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4nD9pt7Lhy1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 14:46:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B97DB864CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:46:53 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a93so50744807pla.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=C/HgJ25I8tvmndBMxmt0bsyVpd8eQwU8Ds2rcKgpH0A=;
 b=WmL5SRmgyiAJGWNX7EFDS09vb/9Sw0UJhDeQvMha5yx82xeHQ1DuGA1Mpxvow+8BIr
 ESWZSjU32fPL9qL5WnPqX4CYmDklf1CWa2v+ROYcDeD7jqEySczangrQW9Db+Eqi29cG
 NhrqVX2SiDBSJ09jCyPeiN4wnsJddTVVRqtko+QrGKZ5lAJn1w8yiK261kgyXiL92sSZ
 QDeGxk9y66uO+hYxqkbLjSsWLOcOoClNghJ2/b2kdzJueyLZT4UEPTOUhIpBqYgvX1cO
 hEUxyxlNS41Tbd/0gJh+bmhKXUx/iuCtP9sAjbdj/vFIb0JiCR1Sx7BY94DHAGjZDJB9
 9yAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=C/HgJ25I8tvmndBMxmt0bsyVpd8eQwU8Ds2rcKgpH0A=;
 b=VhFc3WFXBHnMt2Di2hwjqI8asKSLmDnPqPbQ2EGAEHl+qkqK86BvAFEacPDtgVH3i1
 iynIdj/GujP19LTYq3/I6B98sOADDU47PfCz1FGmjdZt9pjnji4VOOGTt9r7q5HvU1qf
 eq1lxKO+gm3nCaW3VIufgz/Pu5aq8tZRgnCyNkH+K3VWgwrBBRLpTtrLZ67YnXEDtSFx
 7nEZVMkewCgvgZvOwqUkMo0GEsENOeYnKwCtu2fet9wV5Y5chPLZMHepNKMNnpb+G75j
 WBdFtErExBhvoAGPm200RXjp30O/IGw3b9SIICwO//KCr/5VAZ3bS9ZGIbMESKMwL0aJ
 kTzg==
X-Gm-Message-State: APjAAAUeuS4Q0mcCtbZVKQk/M1hPZ/VSaWsN/sU5wUIKXp1AptA4Gt4G
 C4u4EW4Cq2CBCOt6SqvJY+0=
X-Google-Smtp-Source: APXvYqx9YQ3vULbpEAfo+40fOeew9EainU/7et4KrcvMAtFqeVFsUnahNHvaHlQCPCSfHa/6pVZgXQ==
X-Received: by 2002:a17:902:9698:: with SMTP id
 n24mr2908901plp.14.1565794013396; 
 Wed, 14 Aug 2019 07:46:53 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id l4sm23278pff.50.2019.08.14.07.46.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:46:52 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 07:46:51 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <B49497F3-8DD7-4C24-B7EE-CBF3488A913C@gmail.com>
In-Reply-To: <1565767643-4908-2-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-2-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 1/8] xsk: replace
 ndo_xsk_async_xmit with ndo_xsk_wakeup
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, maciej.fijalkowski@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:

> This commit replaces ndo_xsk_async_xmit with ndo_xsk_wakeup. This new
> ndo provides the same functionality as before but with the addition of
> a new flags field that is used to specifiy if Rx, Tx or both should be
> woken up. The previous ndo only woke up Tx, as implied by the
> name. The i40e and ixgbe drivers (which are all the supported ones)
> are updated with this new interface.
>
> This new ndo will be used by the new need_wakeup functionality of XDP
> sockets that need to be able to wake up both Rx and Tx driver
> processing.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
