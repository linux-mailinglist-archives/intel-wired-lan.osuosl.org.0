Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNxqNn2WFWp9WgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 14:47:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AE15D5C00
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 14:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A644240FCC;
	Tue, 26 May 2026 12:47:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QzFntBRLQ1z0; Tue, 26 May 2026 12:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9E7D40FC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779799673;
	bh=5kwiZ88aMCCOMgCKv+ZUerR8iXVNCA9hIs6rASmQTCk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AFxmjmvL+uBA+C1hT8WgCiH1Ng3GXc8CVGiRuf57ooIp9LWFD34mY7Ej9dDY7/B2k
	 67veMIQkWS7Ssc98RaCSu09Ri/E9sTGoCwYkuXcRFmBEH8bI1tirz0p/cC/s/CFVcQ
	 J0zEmmmrYzHUmg/9ihxvggQkcQN0zYT5Yn9O9l9GayfFD/PsMaAMjQiFsoerdd9JbB
	 Q+U3ysGUmtJ2S8pIOhs4csFyZnyJsMo/xgLdjWcuvYsUpaAs+VxAlCK7Xe0GLEaSAm
	 UmHEhXxXM/Hp6n6SjDRqp//4a9t2eX0Dx7CCCPAXNLmGiF0R0d9nSDTShOf8OEUnU9
	 x2aFgT8Eg19ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9E7D40FC4;
	Tue, 26 May 2026 12:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C61D5265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 12:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A67824087D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 12:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egxMyWolgd0A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 12:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A1F74045D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A1F74045D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A1F74045D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 12:47:49 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-282-bg1HAInXNjm4Jce7TCjgNA-1; Tue, 26 May 2026 08:47:46 -0400
X-MC-Unique: bg1HAInXNjm4Jce7TCjgNA-1
X-Mimecast-MFC-AGG-ID: bg1HAInXNjm4Jce7TCjgNA_1779799665
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-45ea38c03a1so4470712f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 05:47:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779799665; x=1780404465;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5kwiZ88aMCCOMgCKv+ZUerR8iXVNCA9hIs6rASmQTCk=;
 b=FK3u6cBc5c1BbQNkeqh6uNtRbo2dgw7E3R1Fy7W1kwplRIWaMh5xtPdvzdNPluC3yk
 fg/GnBrB2GI+RUVpz4c8c3BaqoqYHQIN6IvDgIPjViMZpKtrpvdZ1uBdofEl8TsyowKo
 H39Cp5ct5QP7qfTvLJs/Pa1P7otOlbP7HieJc1sex93rKA/uJmI9Iw6I/8AUVtEvJyG6
 1FaJTkxdfWJzQekhdoqfWfOOeXVu6wWjSv1CsIkoatsjuzbiQZUdnG79JGfSMXqqIb3u
 dQpUHqPZnZ8N8KLvqJZg2YTeP0tRRgIGpHdIGKMxyghxIkultdrBONjLTV28ApYTLfn6
 20yw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9LDpiiydUpi5mMW6uhhzJ+R7/Zm+1EXy0YMVdDcu7N9zX2c7vHh1RWDlZG0p+2fEU9nlSAVn7SVvMWVofCS5Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzxYAlv+C0BJTPIf7kYxLg6vFkgTwcT18bSLd40hTBezG1REZI/
 i37DBKlV9Y7chLcnwXKcjyFqO5f+4uqi0iIh6wgGtPYXVLhBu6E3H9hTT2PKUfkeWGLKqrq8uWr
 lX9mnVTR5+GtmxgR2fPlSdkR5CI9nJa17MG4hBjdmsEzbMFURFsODPK1JIuKyxXFbiuBDV9s=
X-Gm-Gg: Acq92OHV3ZcPfeJ7Jj4yJhCF8EUoxyjY9DlZTEB62fclvclC32kaMrVsxBqSikpuUnQ
 OezW0dk4QHlZNvzYcwPRQNPGUAOuKeTfWmME1cBZp94rg9pXkB4hFWHb8/TEN6jbUTnu4v6Tbss
 +arZzcFylEecQ9xH6ixXZoo0ojUkspG5hUoBQRshzLnqUakKfijkjCO1zoveJDLaKS1IJuO+65Y
 kyoDurUbbTjh0CyD2KsBjtUomdUrsMWDIC7avRsl4+CmHt8OJepqRXfXy1nzmCwUr9y2JCCd/3j
 0Vs6JMteDrStns+1RK2dkMBv3hNcR3KdXO+4Q/HDLwz7GVHWUHSXStbjj9i65POZzZlEkDm+4lP
 xRlzErxuI
X-Received: by 2002:a05:6000:1a85:b0:43d:762e:76ba with SMTP id
 ffacd0b85a97d-45eb367fb35mr31041323f8f.17.1779799665250; 
 Tue, 26 May 2026 05:47:45 -0700 (PDT)
X-Received: by 2002:a05:6000:1a85:b0:43d:762e:76ba with SMTP id
 ffacd0b85a97d-45eb367fb35mr31041262f8f.17.1779799664691; 
 Tue, 26 May 2026 05:47:44 -0700 (PDT)
Received: from [10.43.3.161] ([213.175.37.14])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45eb6c9f6ffsm35518540f8f.1.2026.05.26.05.47.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2026 05:47:43 -0700 (PDT)
Message-ID: <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
Date: Tue, 26 May 2026 14:47:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 David Laight <david.laight.linux@gmail.com>,
 John Ousterhout <ouster@cs.stanford.edu>
Cc: stable@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
 <20260513214927.17a8dd45@pumpkin>
 <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
 <20260514110112.12bdf5ff@pumpkin>
 <30dc284c-8cc0-4bae-b7b0-99d6d71a66e3@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <30dc284c-8cc0-4bae-b7b0-99d6d71a66e3@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xCR-GRIbP_1hZI2cZfMYq6q6qJK1mQ6fL63nMuW6Nu4_1779799665
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1779799668;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5kwiZ88aMCCOMgCKv+ZUerR8iXVNCA9hIs6rASmQTCk=;
 b=LqPHbZWp3BAQftfqI91wcoKp5iuwUg0kCxRipZS1iNrKTdB/x1JECNfLjPpsxb5m/sksgl
 R7jpnE8YpD8fOI3K7+j7ifqHrPOsBi6Kt3wyBx9ljwM7jhwee5o0cvG8/Vo9ZLiwDlfOTn
 fTvGIQ+uXN0+wGEXPHRC9DqdjvpVtzI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=LqPHbZWp
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:david.laight.linux@gmail.com,m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,cs.stanford.edu];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.975];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 94AE15D5C00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/14/26 18:43, Jacob Keller wrote:
> On 5/14/2026 3:01 AM, David Laight wrote:
>> On Wed, 13 May 2026 21:47:11 -0700
>> John Ousterhout <ouster@cs.stanford.edu> wrote:
>>
>>> On Wed, May 13, 2026 at 1:49 PM David Laight
>>> <david.laight.linux@gmail.com> wrote:
>>>> On Wed, 13 May 2026 09:28:40 -0700
>>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
>>>>   
>>>>> On Wed, May 13, 2026 at 2:07 AM David Laight
>>>>> <david.laight.linux@gmail.com> wrote:
>>>>>> On Tue, 12 May 2026 11:19:53 -0700
>>>>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
>>>>>>   
>>>>>>> Consider the following sequence of events:
>>>>>>> * The bottom half of a buffer page is filled with data from
>>>>>>>    packet A. The page has a net reference count (reference count
>>>>>>>    - bias) of 1. The page is returned to the NIC, flipped to
>>>>>>>    use the top half.
>>>>>>> * Before the reference on the page is released, the NIC returns
>>>>>>>    the page with no data in it ('size' is zero in ice_clean_rx_irq).
>>>>>>>    In this case the bias does not get decremented. The page still
>>>>>>>    has a net reference count of 1, so it gets returned to the NIC.
>>>>>>>    However, ice_put_rx_mbuf flipped the page so that the bottom
>>>>>>>    half is active.
>>>>>>> * If the NIC stores another packet in the page before packet A
>>>>>>>    has released its reference, the data in packet A will be
>>>>>>>    overwritten with data from the new packet.
>>>>>>> * Unfortunately zero-length buffers occur frequently: they seem
>>>>>>>    to occur whenever a packet uses every available byte in a
>>>>>>>    buffer, ending precisely at the end of the buffer. When this
>>>>>>>    happens the NIC seems to generate an extra zero-length
>>>>>>>    buffer.
>>>>>>> The fix is for ice_put_rx_mbuf not to flip pages that have a
>>>>>>> size of 0.
>>>>>> How is this different from packet B (in the top half) being
>>>>>> freed before packet A (in the bottom half)?
>>>>> I'm not sure exactly what you're referring to here. Are you asking
>>>>> about a situation where both halves of the page get filled with packet
>>>>> data and then the second half to be filled is the first to be freed? I
>>>>> believe that the ICE driver abandons a page if both halves are ever
>>>>> occupied simultaneously; the page will be returned to the system once
>>>>> both halves have dropped their references. Thus it doesn't matter
>>>>> which half is freed first.
>>>> That is what I was thinking, seems like the logic is over complicated.
>>>>
>>>> If you need to put 4k pages into some kind of iommu rather than 2k buffers
>>>> (to contain 1536 byte ethernet packets) then I'd have thought you'd
>>>> initially put both halves into adjacent tx ring entries.
>>>> If a rx buffer is discarded (eg a zero length fragment or a CRC error,
>>>> or even 'copy break' for short packets) then, as an optimisation,
>>>> you could reuse the buffer for another receive.
>>>> The same could be done if the page is freed by an application.
>>>>
>>>> However it sounds like it doesn't use the 2nd half until the first
>>>> completes - otherwise you'd never 'flip' to make the other half
>>>> active.
>>>>
>>>> Thinks...
>>>> By only putting half of each 4k 'page' into the rx ring the code
>>>> will usually save (expensive) iommu setup in the (probably) normal
>>>> case where the buffers are freed 'reasonably quickly'.
>>>> But that really requires a 'free/with_nic/busy' state for each half
>>>> rather then trying to guess from a reference count.
>>>>
>>>> But if the low-level code is recycling the rx buffer (for any reason)
>>>> it wants to use the same buffer.
>>>>
>>>> The ethernet driver I wrote (a long time ago, early 90s) allocated
>>>> 64k as 128 512byte buffers and did an aligned word-sized copy of
>>>> every receive frame - most frames were in contiguous memory.
>>>> The simplicity of it made up for the cost of the copy, especially
>>>> since that was an iommu system.
>>> I'm not here to defend the logic (and it has been replaced with
>>> something that is probably simpler and more efficient); I'm just
>>> suggesting a bug fix for the stable releases that still have this
>>> logic.
> Right. We definitely want a fix for the possible data corruption in
> stable. Ideally one as simple as possible.
>
>> You've forced me to look at all of the function :-)
>> I've noticed a few things:
>> - If ice_add_xdp_frag() fails (because there are too many fragments)
>>    then the rest of the fragments are left in the tx ring (instead
>>    of being discarded) - so are likely to be treated as a full packet
>>    later on.
>> - Frames with status errors (crc, framing etc) are discarded after
>>    the skb is built - surely that should happen before the xdp 'program'
>>    is called.
>> - If the remote system send a very very long frame (traditionally the PHY's
>>    'jabber detect' didn't always work) you can end up with all of the rx
>>    ring being full of a single partial packet.
>>
>> I think you need to avoid calling ice_add_xdp_frag() when 'size == 0'.
>> Then in ice_put_rx_mbuf() unconditionally call ice_put_rx_buf() for
>> zero length fragments.
>> The comment would be 'zero length fragments can always be reused'.
>>
> That seems correct.
>
>> The zero length fragments almost certainly exist because the mac hardware
>> advances the the new buffer expecting more data - but only gets the
>> 4 byte CRC. So the zero length buffer contains the receive status.
>>
> That matches my understanding.
Hi John,

I have been looking at the same area in the pre-page-pool ice code and
I want to ask whether you observed memory growth during your Homa runs
that exposed the corruption, because in my testing the same bias mismatch
also produces a slow page leak that your v3 does not close.

Short version of the leak path, in the PASS (!CONSUMED) branch:

   1. ice_get_rx_buf(size=0) does pagecnt_bias-- unconditionally
      (added by commit ef68094cb09e ("ice: Fix kernel panic due to page
      refcount underflow") as the fix for the matching panic).
   2. ice_add_xdp_frag() then returns 0 for size==0, so that page is
      never attached to the xdp_buff/SKB. Nobody downstream will ever
      call put_page() to balance the pagecnt_bias-- from step 1.
   3. Your v3 in ice_put_rx_mbuf() correctly skips the page flip for
      size==0, which closes the corruption window. But it does not
      restore pagecnt_bias for that zero size buffer, so the page is
      handed back to ice_reuse_rx_page() with a permanent deficit of 1.
   4. On the next reuse of that page with size > 0, pagecnt_bias drops
      again. ice_can_reuse_rx_page() now sees pgcnt - bias == 2 and
      drains via __page_frag_cache_drain(page, pagecnt_bias). Because
      pagecnt_bias is one too low, the drain undershoots by 1: page
      refcount stays at 2 instead of 1.
   5. The SKB eventually releases its reference (refcount -> 1), but
      nothing ever brings it to 0. The page is leaked.
      ice_alloc_rx_bufs() just allocates a fresh page to fill the slot.

At the zero size frequency you mentioned (thousands per second), this
adds up to roughly MB/s of leaked page cache, which Jaroslav Pulchart
originally reported against 6.13.y on NUMA nodes and which motivated
the libeth/page_pool conversion in mainline. So in stable trees the
leak side of this bug is still live.

Two questions:

   - Did you monitor RSS / page allocator stats over the duration of
     your Homa runs? If you did and did not see growth, I would like
     to understand what is different about your setup, because by my
     reading of the code the leak should fire whenever both halves of
     a page end up in SKBs simultaneously and one of them carried a
     zero size descriptor along the way.

   - If your focus was specifically the corruption, would you be open
     to extending v3 (or replacing it) with a fix that also restores
     pagecnt_bias for the size==0 case? The minimal extension is one
     extra branch in ice_put_rx_mbuf:

         if (verdict != ICE_XDP_CONSUMED && size != 0)
                 ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
         else
                 buf->pagecnt_bias++;

     which restores bias on every path where the page is not actually
     going out to an SKB. (I have a slightly different variant that
     tracks has_data in struct ice_rx_buf to also handle the broken
     positional 'i <= xdp_frags' counter in the CONSUMED path, where
     zero size descriptors in the middle of a frame steal bias++ slots
     from real fragments. Happy to share it if useful.)

Regards,
Petr

