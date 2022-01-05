Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A16485575
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 16:09:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04B59830AB;
	Wed,  5 Jan 2022 15:09:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3QOV8gXSZW8; Wed,  5 Jan 2022 15:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3BAB8308A;
	Wed,  5 Jan 2022 15:09:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57BDF1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 12:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45ABB41606
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 12:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=hartkopp.net
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eubr3cGcOQlr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 12:53:03 +0000 (UTC)
X-Greylist: delayed 00:06:00 by SQLgrey-1.8.0
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
 [85.215.255.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 25DFC410E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 12:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1641386813;
 s=strato-dkim-0002; d=hartkopp.net;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Cc:Date:
 From:Subject:Sender;
 bh=QhaTPRAT6pE/acWWiY6IvvTtf0PQlNpU15CJiCzPGAI=;
 b=T9b27m0NV6dGZ+UmnMze6ZFwwIsyOI17imoi8mgzUyvBEYerfUeJjo1GyTMEczBDxB
 OwDu/hj5T8qyw3yZbnJ33Bl24Suo3vKKCm0AmlWOyMKAQLSkQRMVE5uAQImiPCpzLoHX
 xlcFFtJ53M4UXeRidM+82g96pdFTf+OIDvj/EFzm+6p90WqsfsJ15FF8WmInxStbgE3u
 gO3YT0WRjYnIc6bRLl8hq8tuthIc2Gz269kHsIrFQ66cool0a+ZwmCFz+LSfDsbrPvX8
 VhwSUOPtaIELF3TBg8Q7Y6N4dXqxpnQFyKSIuYJfjVqR5s6guhXHJhthL0BbTPAqdR1p
 B9Tg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P2MHfkW8eP4Mre39l357AZT/I7AY/7nT2yrDxb8mjG14FZxedJy6qgO1qCHSa1GLptZHusx3hdd0DIgVuBOfXW6v7w=="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2a00:6020:1cfa:f900::b82]
 by smtp.strato.de (RZmta 47.35.3 AUTH)
 with ESMTPSA id k081c3y05CkqzVE
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 5 Jan 2022 13:46:52 +0100 (CET)
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 syzbot <syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com>
References: <0000000000007ea16705d0cfbb53@google.com>
 <0000000000000fbea205d388d749@google.com>
 <20220105114410.brzea3f5flgn5nl2@pengutronix.de>
From: Oliver Hartkopp <socketcan@hartkopp.net>
Message-ID: <c936a5e5-3c16-9060-f2fc-cb315a4c03e1@hartkopp.net>
Date: Wed, 5 Jan 2022 13:46:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220105114410.brzea3f5flgn5nl2@pengutronix.de>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 05 Jan 2022 15:08:52 +0000
Subject: Re: [Intel-wired-lan] [syzbot] kernel BUG in pskb_expand_head
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
Cc: hawk@kernel.org, eric.dumazet@gmail.com, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, davem@davemloft.net, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, linux-can@vger.kernel.org,
 intel-wired-lan-owner@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 05.01.22 12:44, Marc Kleine-Budde wrote:
> On 19.12.2021 16:19:20, syzbot wrote:
>>   skb_over_panic net/core/skbuff.c:118 [inline]
>>   skb_over_panic net/core/skbuff.c:118 [inline] net/core/skbuff.c:1986
>>   skb_put.cold+0x24/0x24 net/core/skbuff.c:1986 net/core/skbuff.c:1986
>>   isotp_rcv_cf net/can/isotp.c:570 [inline]
>>   isotp_rcv_cf net/can/isotp.c:570 [inline] net/can/isotp.c:668
>>   isotp_rcv+0xa38/0x1e30 net/can/isotp.c:668 net/can/isotp.c:668
> 
>> struct tpcon {
>> 	int idx;
>> 	int len;
>          ^^^
>> 	u32 state;
>> 	u8 bs;
>> 	u8 sn;
>> 	u8 ll_dl;
>> 	u8 buf[MAX_MSG_LENGTH + 1];
>> };
>>
>> static int isotp_rcv_ff(struct sock *sk, struct canfd_frame *cf, int ae)
>> {
> 
> [...]
> 
>> 	/* Check for FF_DL escape sequence supporting 32 bit PDU length */
>> 	if (so->rx.len) {
>> 		ff_pci_sz = FF_PCI_SZ12;
>> 	} else {
>> 		/* FF_DL = 0 => get real length from next 4 bytes */
>> 		so->rx.len = cf->data[ae + 2] << 24;
>> 		so->rx.len += cf->data[ae + 3] << 16;
>> 		so->rx.len += cf->data[ae + 4] << 8;
>> 		so->rx.len += cf->data[ae + 5];
>> 		ff_pci_sz = FF_PCI_SZ32;
>> 	}
> 
> Full 32 Bit PDUs don't work with struct tpcon::len being an "int". I
> think converting it to "unsigned int" should be done.
> 
> [...]
> 
>> }
>>
>> static int isotp_rcv_cf(struct sock *sk, struct canfd_frame *cf, int ae,
>> 			struct sk_buff *skb)
>> {
>> 	struct isotp_sock *so = isotp_sk(sk);
>> 	struct sk_buff *nskb;
>> 	int i;
>>
>> 	if (so->rx.state != ISOTP_WAIT_DATA)
>> 		return 0;
>>
>> 	/* drop if timestamp gap is less than force_rx_stmin nano secs */
>> 	if (so->opt.flags & CAN_ISOTP_FORCE_RXSTMIN) {
>> 		if (ktime_to_ns(ktime_sub(skb->tstamp, so->lastrxcf_tstamp)) <
>> 		    so->force_rx_stmin)
>> 			return 0;
>>
>> 		so->lastrxcf_tstamp = skb->tstamp;
>> 	}
>>
>> 	hrtimer_cancel(&so->rxtimer);
>>
>> 	/* CFs are never longer than the FF */
>> 	if (cf->len > so->rx.ll_dl)
>> 		return 1;
>>
>> 	/* CFs have usually the LL_DL length */
>> 	if (cf->len < so->rx.ll_dl) {
>> 		/* this is only allowed for the last CF */
>> 		if (so->rx.len - so->rx.idx > so->rx.ll_dl - ae - N_PCI_SZ)
>> 			return 1;
>> 	}
>>
>> 	if ((cf->data[ae] & 0x0F) != so->rx.sn) {
>> 		/* wrong sn detected - report 'illegal byte sequence' */
>> 		sk->sk_err = EILSEQ;
>> 		if (!sock_flag(sk, SOCK_DEAD))
>> 			sk_error_report(sk);
>>
>> 		/* reset rx state */
>> 		so->rx.state = ISOTP_IDLE;
>> 		return 1;
>> 	}
>> 	so->rx.sn++;
>> 	so->rx.sn %= 16;
>>
>> 	for (i = ae + N_PCI_SZ; i < cf->len; i++) {
>> 		so->rx.buf[so->rx.idx++] = cf->data[i];
>> 		if (so->rx.idx >= so->rx.len)
>> 			break;
>> 	}
>>
>> 	if (so->rx.idx >= so->rx.len) {
>> 		/* we are done */
>> 		so->rx.state = ISOTP_IDLE;
>>
>> 		if ((so->opt.flags & ISOTP_CHECK_PADDING) &&
>> 		    check_pad(so, cf, i + 1, so->opt.rxpad_content)) {
>> 			/* malformed PDU - report 'not a data message' */
>> 			sk->sk_err = EBADMSG;
>> 			if (!sock_flag(sk, SOCK_DEAD))
>> 				sk_error_report(sk);
>> 			return 1;
>> 		}
>>
>> 		nskb = alloc_skb(so->rx.len, gfp_any());
>> 		if (!nskb)
>> 			return 1;
>>
>> 		memcpy(skb_put(nskb, so->rx.len), so->rx.buf,
>                         ^^^^^^^
>> 		       so->rx.len);
> 
> This is where the skb_over_panic() happens.
> 

Thanks Marc!

Yes I went to this piece of code too - but was not able to find anything 
wrong, as the values at this point should be far(!!) away from INT_MAX.

Due to this check in isotp_rcv_ff():

if (so->rx.len > MAX_MSG_LENGTH) { ... exit

And MAX_MSG_LENGTH is define as 8200.

Btw. making tpcon:len an unsigned int is really the solution to this! 
Which makes the above if-statement act correctly also with values like 
0x80001234.

m(

Thanks for the finding!

Best regards,
Oliver
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
