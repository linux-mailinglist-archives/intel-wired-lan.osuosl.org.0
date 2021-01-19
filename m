Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4414A2FC349
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 23:25:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03DA385DA4;
	Tue, 19 Jan 2021 22:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZTHh2hILZt3; Tue, 19 Jan 2021 22:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65FD586439;
	Tue, 19 Jan 2021 22:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2697C1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20B94203B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfEY39P86mfQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 22:25:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54])
 by silver.osuosl.org (Postfix) with ESMTPS id 41841203A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:07 +0000 (UTC)
Received: by mail-io1-f54.google.com with SMTP id d81so27794497iof.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 14:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ndPJv3Dw3hEVsrNkrtY/IVB4dfqRQo8AR2YeLgGSV8Q=;
 b=uSxmwspGjZr3sg7ZtZX+R62Cz+izxPpOKr/8+TOLpQK8Qm+dBd3/jZ+7CSfCkUKBxH
 BiUzDMC8nBbwp8BdE4pEr5dXctv75CaWerpeawQ3cS1SnyZI/bPNeGKDT6a1LWO32quC
 HOlRiRKgNcnhDRIkF24PAF49Ii6YIhlGhfbOgaywMoYyS6x7KCN0xbDQwS0y7skmqNRS
 7chM4l+Tb193l11F6Qp40l1A4YOdS6aJ89hULgO24GEQ8JvjvVCyMryhUxYnKlKXaj8n
 2hUZnbGdUteWybqUtaNIDkr3ZHGe0l76etk9zBxIezthScy35M7lMW3i7PTLbOfZObzw
 7C7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ndPJv3Dw3hEVsrNkrtY/IVB4dfqRQo8AR2YeLgGSV8Q=;
 b=UCxBhPfmAeBdwHZKya11xug8W0/WZHB4nER/uLu/219/hwZd2/Z5O6ykX+vQUIh8Dd
 WWap1vkvMXj33G74VSmk0FaRNHAaOKRpLlI8Hvot+BahjPbUTrqD4gkyzjctNQgr8Vk3
 9NdIIUp4pDxJW2JO3NGQ1jb5DUOmIzKBNvu5BG86WBAEiFk8e81Z4DJCpKCrl+r4mBBF
 5/BQJ+r2wJJ9pN2lA1NJBE0H4PiGBwPNnCCu7LS7rJY9gBca2k99pVUyyal7iOLKLkO7
 K9QfdcOZpR/lFpr/dEkh9AZtGIg1gPN0693WUYW4gbl/MxLEU5olzf2IvyX6AtEmVPDi
 L5nA==
X-Gm-Message-State: AOAM531ZN1e0kG5jKDtTJ6mpncu5eew0YtZjBg3inR4sUsyszIyQ1W+D
 a4wS9m6xTmxpUtrjudd3mZbFuYN6yZNCMHMVLuU=
X-Google-Smtp-Source: ABdhPJxK3WlkOvjAsX/EJ3DIYudw0vPbWcTMp69mqLZxo+grxUhO2VsmDET9jhsG2bO7BoZcM8bS9Yj32Of6/nul0Xk=
X-Received: by 2002:a05:6e02:c6:: with SMTP id r6mr5165205ilq.95.1611095106618; 
 Tue, 19 Jan 2021 14:25:06 -0800 (PST)
MIME-Version: 1.0
References: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <cover.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
 <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 19 Jan 2021 14:24:55 -0800
Message-ID: <CAKgT0UeKRDNX_GHsGUh4fLCDni80Ysxms+P2ac1HeZwcG5zkdA@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/6] net: igc: use
 skb_csum_is_sctp instead of protocol check
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, network dev <netdev@vger.kernel.org>,
 "linux-sctp @ vger . kernel . org" <linux-sctp@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 15, 2021 at 10:14 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> Using skb_csum_is_sctp is a easier way to validate it's a SCTP CRC
> checksum offload packet, and yet it also makes igc support SCTP
> CRC checksum offload for UDP and GRE encapped packets, just as it
> does in igb driver.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
