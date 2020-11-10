Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7CC2AD03F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 08:13:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F30A986516;
	Tue, 10 Nov 2020 07:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ciufmWsnxoie; Tue, 10 Nov 2020 07:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65606864C4;
	Tue, 10 Nov 2020 07:13:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18A871BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 07:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12D168604A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 07:13:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t73dB7nqygVb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 07:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 99B4485F5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 07:13:05 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id r186so9392864pgr.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Nov 2020 23:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZPFe2WuiWwyNg1Eyj3XJGsLb5Wa+6AC1ZklocEhohjk=;
 b=LW4ny0aDBseDwZ76K9DKeQOHEHyHurl/nH8zVm9oq4gw3hcIQnEjTIVQzx01YG6MAq
 OQY/3QH+NaZAieNoZmYuUPUzzMz45JXLzqk16njQnUQdVMz8+Oohl8/vftFwrd5DogF1
 RgD3k6j8EWApfYjwY6SQy0Ig2uJn4nq8n3a3pIuKVUjQYBnS5Tl0zSldv42Sc7vy3TdO
 0FERJ5P7UBQakCZ6KBvmrbcSsLJ0AtuDYORTC7NgZIWvUMu0VnVBwj6fX296zTCOZPC+
 9ubJsOCWlqPCWt9jpz8TzyWq2qOHNGRujamCmMWKpRdbXqclCh4ODJ3/zuNTqeECEbiY
 OF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZPFe2WuiWwyNg1Eyj3XJGsLb5Wa+6AC1ZklocEhohjk=;
 b=heNUQyrJHaDmeCoLkIJuLmfRwlk7pW8wqCRRfVex5p0K6FE/81o+/PDyStQzompMsu
 U6lFCSxKFUeUhPqmdne6sTTuQsUbrTmkm1CnyDlTUSI/b21oDK3sSf1hqV/fPCopgyG2
 Dn+qi9ExYWwdmpnkAHY0j9N11LHmXG3M37/oaxECxY9S6APOUHYmwgxUnth/yco6eZi4
 +Zti64D1QNPBvXy5Ve0o5rHlVoevKGZciOUbroZ0qfSLRLy3yk2EqLBfpwQcPRR6UQHd
 +suxjhZDpV4tbuWsyoX1H1DijsXRL+MUe4ByB94/roAtCLix2m55BpL+65YqucmtZnhj
 epCg==
X-Gm-Message-State: AOAM530khUz/qCH1ykvJmwspKktDXA1ih6L6U3GgBTCQWZDdPyQg1w3L
 Tf0TCdvTeURlcoQx1Heih+YeGWpcrr19RWNva/I=
X-Google-Smtp-Source: ABdhPJwdKvbB69qXEgdZwN3837DsoGBC4vJQh8ZB1EElebgRlZqRjGhXE6kbQreHcgynDvusc9yZdtBUmsuH6ozwGTw=
X-Received: by 2002:a62:2bd0:0:b029:18a:df0f:dd61 with SMTP id
 r199-20020a622bd00000b029018adf0fdd61mr16448462pfr.19.1604992385197; Mon, 09
 Nov 2020 23:13:05 -0800 (PST)
MIME-Version: 1.0
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-3-git-send-email-magnus.karlsson@gmail.com>
 <5fa9aae46c442_8c0e208b5@john-XPS-13-9370.notmuch>
In-Reply-To: <5fa9aae46c442_8c0e208b5@john-XPS-13-9370.notmuch>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 10 Nov 2020 08:12:54 +0100
Message-ID: <CAJ8uoz1f=-2Dysg-iwo=Grn0eS5nJB0hNE8HuPeHYPgeE4Bfmg@mail.gmail.com>
To: John Fastabend <john.fastabend@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/6] samples/bpf: increment
 Tx stats at sending
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 9, 2020 at 9:47 PM John Fastabend <john.fastabend@gmail.com> wrote:
>
> Magnus Karlsson wrote:
> > From: Magnus Karlsson <magnus.karlsson@intel.com>
> >
> > Increment the statistics over how many Tx packets have been sent at
> > the time of sending instead of at the time of completion. This as a
> > completion event means that the buffer has been sent AND returned to
> > user space. The packet always gets sent shortly after sendto() is
> > called. The kernel might, for performance reasons, decide to not
> > return every single buffer to user space immediately after sending,
> > for example, only after a batch of packets have been
> > transmitted. Incrementing the number of packets sent at completion,
> > will in that case be confusing as if you send a single packet, the
> > counter might show zero for a while even though the packet has been
> > transmitted.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
>
> LGTM. Just one question then if we wanted to know the old value, packet
> completion counter it looks like (tx_npkts - outstanding_tx) would give
> that value?

That is correct.

> Acked-by: John Fastabend <john.fastabend@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
