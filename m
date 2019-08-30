Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2871FA3AF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:50:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D000484EED;
	Fri, 30 Aug 2019 15:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vW22fzEFZk2H; Fri, 30 Aug 2019 15:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DD8687EDD;
	Fri, 30 Aug 2019 15:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 680751BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6391E87ED7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CIw8E3rOeza for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:49:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EAB9B84EED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:49:59 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id gn20so3553562plb.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=co3bGrM/Y5VLsvT0nTMJHcvtw5mE9WMAkKrlhFtcrF8=;
 b=C16sucQoN3owh8h2r0ees16i+d24t64nMqv4X0wt/MS+KLq39nQIdl9yn3xnWDlmG7
 qZLbDJb4pijhXz3T6to5lPSKS/y5mYwQblb/eCsWydKolc6RTfvf0cPz1/YbCXq9hR+t
 J83tIQkYy5gQe7ogYEpeVyRQ8xEYNX9nOy+RDiogZqKv2sPSv43nlRRUotZFdEwewdYt
 VmfdlASW+XeU0YMSzc2cH1fOOOA77cLJFDtKzZvwjBxHoBUo+BgDoXqZhAeNn2IGReqQ
 ojEYLEyQO00m9XsnISX0N0SP1pSsRNBGrD0Rlsf96Bzt31XjG7Q47pjyfY1LKtJg+DKV
 NMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=co3bGrM/Y5VLsvT0nTMJHcvtw5mE9WMAkKrlhFtcrF8=;
 b=IuAQSzSLmQT8iou8gdvNNJt1EvkKevNToaxKOtgx+n6vR2tqX+QAs0PtvEUFQfLXft
 ik5TtXDCV88wVEPlOZWn4ixVh28YISaHmJ+0eI1TH5oWcbpVEaonJHXdI9TUXxO5FV2Q
 sej2Y00KBFJQ1hZmTljDEfHrTKSsH75OmWlvnGCw/05ueCQ+kROMiDoPjvoAUuI0WI4w
 4FuzUFBbr+TYWOhddlXB61tqAgPemkLy7HvFNUDWlNWu4AV7cEISRXyvJ25gOOnJtdOZ
 0XRg0eNdxshXZhl3tvs9xcrhYKxCw66vXHDasLZT7mi1E+CQpche6ot0bH9gt+3GXX2K
 9vYw==
X-Gm-Message-State: APjAAAVGa4nfSFNGoyz0sc5FheXaIjTg80DMSOajgLpvyHWNYAjD3CbL
 S2ElTZCFZ3JpUOuMuB4+I7qGQ0helVs=
X-Google-Smtp-Source: APXvYqymaCmMsBIeetw43WWKwvF2vJg4649iUp2ePqLxRr+QNQbkOtCjHRGkdwx9PJVSxmhO4pQlOQ==
X-Received: by 2002:a17:902:720a:: with SMTP id
 ba10mr15474351plb.231.1567180199678; 
 Fri, 30 Aug 2019 08:49:59 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id h70sm6421499pgc.36.2019.08.30.08.49.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:49:59 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:49:57 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <CDECD1EE-EFE2-421A-94B9-3BAF1128D5EC@gmail.com>
In-Reply-To: <20190827022531.15060-11-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-11-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 10/12] samples/bpf: add
 buffer recycling for unaligned chunks to xdpsock
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

> This patch adds buffer recycling support for unaligned buffers. Since we
> don't mask the addr to 2k at umem_reg in unaligned mode, we need to make
> sure we give back the correct (original) addr to the fill queue. We achieve
> this using the new descriptor format and associated masks. The new format
> uses the upper 16-bits for the offset and the lower 48-bits for the addr.
> Since we have a field for the offset, we no longer need to modify the
> actual address. As such, all we have to do to get back the original address
> is mask for the lower 48 bits (i.e. strip the offset and we get the address
> on it's own).
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
