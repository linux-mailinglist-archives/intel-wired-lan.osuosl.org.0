Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08725360BA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AA22414F2;
	Thu, 15 Apr 2021 14:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOh_34Fvh4Vr; Thu, 15 Apr 2021 14:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 780D6414EE;
	Thu, 15 Apr 2021 14:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E4D21BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98A2B405E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEAKcybKZOCu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 12:17:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C45AF4061F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:17:41 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id a4so23116009wrr.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 05:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ibC8KmM3ZCO6n5K5dqW3bxYX4QNUATI5N281R+s5qAA=;
 b=oNZK03HGj+ZvH1b/HNRxfIgjoyumUjD/K+rzUToos9eqKxjiVCTL4ox6tqHYMeG4t5
 GvPWIddjAOZDrLCdTLPmf0zNk6D3Vra4zTI246kiHjwmHYvlwsjf/tzp9tCut2jX0aN6
 Xe2pqcjyKTP76rxzAlXfl5ic6pB0WduwKfxGSK8xq2Ywe2TOA30JEvq6iEjOCcQU4cFg
 IdVewnWBRRg0Z7cI8l/gs+Rw/2rPe83QQJ1Z7CWKrL+K0TyhgPjdcysILnFI2ry2MwPS
 fjTkLFEwJJ46LSm1dcQYl/J8LrwNICYt41o6jmpCQWbmP50zuHrA5dlb1uCCfMVacaFa
 PftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ibC8KmM3ZCO6n5K5dqW3bxYX4QNUATI5N281R+s5qAA=;
 b=ZmuMEKGjuNMwT+CbEvBeeRcJIOnHmdyBAT8T0us+8z2oWjE8mcDnrFK+rborZNDN2l
 ym9MLTcjeu3xTOF7dgdr7wFo/EhV0j7jRKlpSjAZgGLsa8W4rT6hyYdBMcAJbmI4/eDD
 2urzm2Cw0ZYqudw67ZfKZ5SjGmv5JCrumaIVRyhhERQxn1wOYOblm0nqCIcnhkgs6yv9
 Q7V6xuObYa+qgtUI6JK3U46j5FCKppfjxenxKBcdNo3sQxJjQ38VCARTtEaX7FfhgZg7
 FesI43hIeD9tJTr4vYALCFAhvJleNykH8hWOSziNKGKWgNp5wOORkO1F2x9rJrWCJYEN
 4/gw==
X-Gm-Message-State: AOAM533W0pn6fqNnVvDqxCPrRxqxTxkKxcY5HjQ3x+lpZS1Lsx5QlDj5
 rKULoqclIzm0flixXQI0V8usuS2G+epNcH7c9N0=
X-Google-Smtp-Source: ABdhPJyL0i/v8U/mac9Wzdumse0AzYWVK9JOeMiZT0OMypDSStqaiyCKYH1gvPXzdNEV/Wmn/JQyWRObKpCee9Hu9Ak=
X-Received: by 2002:a5d:6a08:: with SMTP id m8mr3192107wru.57.1618489060038;
 Thu, 15 Apr 2021 05:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210415092145.27322-1-kurt@linutronix.de>
 <20210415140438.60221f21@carbon>
In-Reply-To: <20210415140438.60221f21@carbon>
From: Nick Lowe <nick.lowe@gmail.com>
Date: Thu, 15 Apr 2021 13:17:24 +0100
Message-ID: <CADSoG1ssygE8XgkSoWW_WKf3Q43M6JGBN0fbUrrDfLsLyEy0=w@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Approved-At: Thu, 15 Apr 2021 14:16:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Fix XDP with PTP enabled
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Alexei Starovoitov <ast@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Lorenzo Bianconi <lorenzo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Doesn't the i210 card use the igc driver?
> This change is for igb driver.

The igb driver is used for the i210/i211, not igc.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
