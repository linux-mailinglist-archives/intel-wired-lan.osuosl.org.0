Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 535268E0C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CDCBF2277A;
	Wed, 14 Aug 2019 22:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cOVzzdxP43ne; Wed, 14 Aug 2019 22:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 570BE2279B;
	Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 877DB1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 83B2A84485
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id td46X1aptsFN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 14:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC07E841E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:49:09 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i30so4998659pfk.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=2hx+tTqvJK8Pz3h0BtvO/SZZI9UW7Kk8eC6c3WGNqRg=;
 b=mziiyfuE6w44lXE9EfZ/VTNnPnhIOldk/th2YGGwoFRsUBtecQe8M7+/hgaKMW65RH
 SaQnBBCZgW+2TdoMt3ATR4qJD+zp907Wd/EgaKlvZR0DPuG1ALrMiWycnkfPSZyySzcs
 D0OF0jSYL/6pDvhuUSuy0yfR9QxAtgLOyu+0Tl9N8+GjZVVecHwjoTXB1zQiXL+soY9L
 cfdkUOVhIf2khZYx5QohGV6aZWuUeb3NU68AhwZYYD/rGWd67RqRs90ONHRe3iWNYq65
 dZ26dS8ZKEQ88X2EHoOHkayFUhaLZij5G/RmQQO2M4An8w0RBWVTWwIfrQLiFC4GdjWc
 BHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=2hx+tTqvJK8Pz3h0BtvO/SZZI9UW7Kk8eC6c3WGNqRg=;
 b=AHVpAKJys40lKwlqdj+Vdu+sZ/qNFBQ6Xs8+DgjBssNStA2ZlpstORUGxKQrLCsyjf
 wTyT9J7hQcDryk+9h7F2znJnSDlIs20wyIyN4zvMr6SgBokmr6n85gzE3lvWFPzfcjYi
 8zEo8nZRhHmcEti//VkkUo2NQ/TIB7ULqZyFNi/ZK+sCdZNfq6W2HD2lrh6xh+2xNjva
 lGPwen1PXbd+4vpw0LODL2qXwnVhDM9/cQG1AQw5hOUzJOjcwQygINJ4DL46eD21565Z
 EU0aOBFSnBRb4bGZkSFKKo4sB34dN9ZSWo9jqWXfhEEqaNRHUebqnmyQPsQFSxmJsOzy
 JFtQ==
X-Gm-Message-State: APjAAAWodrNLqJNyP6iSZVQeVJf8w9PzbZEF/+lQfNB/YZ1zrGusagBv
 6E5hQOq3gTd2mK7DThnHarI61TWZBj4=
X-Google-Smtp-Source: APXvYqyBWvJa15pge6AkdaHrHw/Wbcpbnns9XmwG1c9sS4MMupQ5S4mwoeWZ5x3VALxbOt4Vk1OfDg==
X-Received: by 2002:a17:90a:c086:: with SMTP id o6mr185669pjs.2.1565794149710; 
 Wed, 14 Aug 2019 07:49:09 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id l26sm142758532pgb.90.2019.08.14.07.49.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:49:09 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 07:49:07 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <CF4AFFE2-D7F3-4C2E-BD31-42441B553EC5@gmail.com>
In-Reply-To: <1565767643-4908-6-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-6-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 5/8] libbpf: add support
 for need_wakeup flag in AF_XDP part
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

> This commit adds support for the new need_wakeup flag in AF_XDP. The
> xsk_socket__create function is updated to handle this and a new
> function is introduced called xsk_ring_prod__needs_wakeup(). This
> function can be used by the application to check if Rx and/or Tx
> processing needs to be explicitly woken up.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
