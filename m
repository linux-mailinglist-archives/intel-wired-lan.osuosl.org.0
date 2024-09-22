Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E41897E10B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Sep 2024 13:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5611B8128A;
	Sun, 22 Sep 2024 11:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0QXNMT2qDeZS; Sun, 22 Sep 2024 11:13:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86A2B81282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727003585;
	bh=3GbIg/W7PN6QRKq8OkNaoprJd23O4LShI0s3EFhauIE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XfzKcHbyjS0D7AaMNLJU46GD9ZF0VX67iUolZj72SO1siyBOjKYl5U6G8wZvZGFNO
	 Xga+WcnCdGilj35gJkGOLt3SxK1Ef3LNsuEVuksIctBph8kL2y63C2oGzefmO9s1kB
	 7czLd6OX8Bm2cZbpzJ2xpQ/P22WN6N1tGX4okznRVmG0XJ8rNPkiw3d6iTyCc2ZYsR
	 RVn0liXSCTB7MJgmgeaZ+UH3PkTPic8GW+3nB5jCgor7R0HMoDTcLN00xVewQesPHl
	 lr1uhuBskq+FgK85+fzkwio5zZLhCkibLrqN1XmURf/iACKA7xJ0U5GmsawrdytV4x
	 CrwjnxRySLQjw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86A2B81282;
	Sun, 22 Sep 2024 11:13:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA1221BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 11:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A774F400AC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 11:13:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PvwgcCZbG9CZ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Sep 2024 11:13:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6526A40022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6526A40022
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6526A40022
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 11:12:59 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-498-cwpPdJN-PxS-5t1JFlza7g-1; Sun, 22 Sep 2024 07:12:56 -0400
X-MC-Unique: cwpPdJN-PxS-5t1JFlza7g-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a8d13a9cc7aso223897666b.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 04:12:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727003575; x=1727608375;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3GbIg/W7PN6QRKq8OkNaoprJd23O4LShI0s3EFhauIE=;
 b=XX1AKFOCYkR6fDwzwcDkKq0MdkVdEDgtKwbYEWS5lqQHxJzJu8wbS9T+Av3zYshWgF
 dHi6GQaQ/xloR3pw+6N7hAJLzTp4a1PJ+T4OKbfm0QHhp360P0G17kGHOEOVVTcn8Vs3
 XKymvydU+j8m4m/GNVszed/xQvyIWbLI1FJnDnjtcSTayeNQso9pRvg53WONgToldENm
 h4i+pC1ESrKTBIU28RATlxi6ra1gC/HRLbGeB+05SD4p6NZqAqOGmgoE3PDup6nEKueQ
 Hp8vpipF5K1Hp3hYQZfeIETz5Zq9i0L8oKUAuZLrIVSz6YLBwz8W+Rn0QyBBG1SsFRfM
 JBgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzTmaZ/sh3+rZS9ybwxGR83VT3jV59yCoGpPp8C/z3iLWr+vKfzQupfT5ll9fqZeHO7qafkrWFidTBCAbUy7M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YweljcCd8vF3VBScHxKknahjoeErfIoz3reXoHoAavP1lftEsJn
 FjknA3yvMMNSMlRjxqdRnFh2oITC1BBQuHzo8kf2hT/dL51v9tPJrOCYwBtPT/WcTLLic/bneEU
 d0MF2D+D7/XgeIAiqNHbL21Su2u0gvaFhMIsWe+R4ZsnGD4CAp2zugUISbnbh4+/fRVc=
X-Received: by 2002:a17:907:928a:b0:a86:78fd:1df0 with SMTP id
 a640c23a62f3a-a90d562206bmr870729666b.34.1727003575431; 
 Sun, 22 Sep 2024 04:12:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYhXGcTRkbaV5483odfYCMi2PaOl6gjAcqkLrOEgNokoh/A2poiFUcWQyHrsAHvnxxdBc9+A==
X-Received: by 2002:a17:907:928a:b0:a86:78fd:1df0 with SMTP id
 a640c23a62f3a-a90d562206bmr870725566b.34.1727003574855; 
 Sun, 22 Sep 2024 04:12:54 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a90610f44fasm1070152966b.79.2024.09.22.04.12.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2024 04:12:53 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A3600157F92A; Sun, 22 Sep 2024 13:12:51 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Jesper Dangaard Brouer
 <hawk@kernel.org>, Arthur Fabre <afabre@cloudflare.com>, Jakub Sitnicki
 <jakub@cloudflare.com>
In-Reply-To: <Zu_gvkXe4RYjJXtq@lore-desk>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sun, 22 Sep 2024 13:12:51 +0200
Message-ID: <87ldzkndqk.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727003578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3GbIg/W7PN6QRKq8OkNaoprJd23O4LShI0s3EFhauIE=;
 b=SUsdjS2c4kZqDpYyzPQjAI60gIKFEB5Ul8cTW9RiOzIqwrxRk6XtE3edXXdaQhv4GvUMOb
 Nw823FiePgTpxg9JsCiq4Nchwl3U9cY2AVKHUC3QokjIMooOR4FXUzrqP2booQ6fhvQbTx
 tJbuPeY42DKb2J0i9ikNrJtjkEjTu24=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=SUsdjS2c
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 Yan Zhai <yan@cloudflare.com>, alexandre.torgue@foss.st.com,
 netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:

>> 
>> 
>> On 21/09/2024 22.17, Alexander Lobakin wrote:
>> > From: Lorenzo Bianconi <lorenzo@kernel.org>
>> > Date: Sat, 21 Sep 2024 18:52:56 +0200
>> > 
>> > > This series introduces the xdp_rx_meta struct in the xdp_buff/xdp_frame
>> > 
>> > &xdp_buff is on the stack.
>> > &xdp_frame consumes headroom.
>> > 
>> > IOW they're size-sensitive and putting metadata directly there might
>> > play bad; if not now, then later.
>> > 
>> > Our idea (me + Toke) was as follows:
>> > 
>> > - new BPF kfunc to build generic meta. If called, the driver builds a
>> >    generic meta with hash, csum etc., in the data_meta area.
>> 
>> I do agree that it should be the XDP prog (via a new BPF kfunc) that
>> decide if xdp_frame should be updated to contain a generic meta struct.
>> *BUT* I think we should use the xdp_frame area, and not the
>> xdp->data_meta area.
>
> ack, I will add a new kfunc for it.
>
>> 
>> A details is that I think this kfunc should write data directly into
>> xdp_frame area, even then we are only operating on the xdp_buff, as we
>> do have access to the area xdp_frame will be created in.
>
> this would avoid to copy it when we convert from xdp_buff to xdp_frame, nice :)
>
>> 
>> 
>> When using data_meta area, then netstack encap/decap needs to move the
>> data_meta area (extra cycles).  The xdp_frame area (live in top) don't
>> have this issue.
>> 
>> It is easier to allow xdp_frame area to survive longer together with the
>> SKB. Today we "release" this xdp_frame area to be used by SKB for extra
>> headroom (see xdp_scrub_frame).  I can imagine that we can move SKB
>> fields to this area, and reduce the size of the SKB alloc. (This then
>> becomes the mini-SKB we discussed a couple of years ago).
>> 
>> 
>> >    Yes, this also consumes headroom, but only when the corresponding func
>> >    is called. Introducing new fields like you're doing will consume it
>> >    unconditionally;
>> 
>> We agree on the kfunc call marks area as consumed/in-use.  We can extend
>> xdp_frame statically like Lorenzo does (with struct xdp_rx_meta), but
>> xdp_frame->flags can be used for marking this area as used or not.
>
> the only downside with respect to a TLV approach would be to consume all the
> xdp_rx_meta as soon as we set a single xdp rx hw hint in it, right?
> The upside is it is easier and it requires less instructions.

FYI, we also had a discussion related to this at LPC on Friday, in this
session: https://lpc.events/event/18/contributions/1935/

The context here was that Arthur and Jakub want to also support extended
rich metadata all the way through the SKB path, and are looking at the
same area used for XDP metadata to store it. So there's a need to manage
both the kernel's own usage of that area, and userspace/BPF usage of it.

I'll try to summarise some of the points of that discussion (all
interpretations are my own, of course):

- We want something that can be carried with a frame all the way from
  the XDP layer, through all SKB layers and to userspace (to replace the
  use of skb->mark for this purpose).

- We want different applications running on the system (of which the
  kernel itself if one, cf this discussion) to be able to share this
  field, without having to have an out of band registry (like a Github
  repository where applications can agree on which bits to use). Which
  probably means that the kernel needs to be in the loop somehow to
  explicitly allocate space in the metadata area and track offsets.

- Having an explicit API to access this from userspace, without having
  to go through BPF (i.e., a socket- or CMSG-based API) would be useful.


The TLV format was one of the suggestions in Arthur and Jakub's talk,
but AFAICT, there was not a lot of enthusiasm about this in the room
(myself included), because of the parsing overhead and complexity. I
believe the alternative that was seen as most favourable was a map
lookup-style API, where applications can request a metadata area of
arbitrary size and get an ID assigned that they can then use to set/get
values in the data path.

So, sketching this out, this could be realised by something like:

/* could be called from BPF, or through netlink or sysfs; may fail, if
 * there is no more space
 */
int metadata_id = register_packet_metadata_field(sizeof(struct my_meta));

The ID is just an opaque identifier that can then be passed to
getter/setter functions (for both SKB and XDP), like:

ret = bpf_set_packet_metadata_field(pkt, metadata_id,
                                    &my_meta_value, sizeof(my_meta_value))

ret = bpf_get_packet_metadata_field(pkt, metadata_id,
                                    &my_meta_value, sizeof(my_meta_value))


On the kernel side, the implementation would track registered fields in
a global structure somewhere, say:

struct pkt_metadata_entry {
  int id;
  u8 sz;
  u8 offset;
  u8 bit;
};

struct pkt_metadata_registry { /* allocated as a system-wide global */
  u8 num_entries;
  u8 total_size;
  struct pkt_metadata_entry entries[MAX_ENTRIES];
};

struct xdp_rx_meta { /* at then end of xdp_frame */
  u8 sz; /* set to pkt_metadata_registry->total_size on alloc */
  u8 fields_set; /* bitmap of fields that have been set, see below */
  u8 data[];
};

int register_packet_metadata_field(u8 size) {
  struct pkt_metadata_registry *reg = get_global_registry();
  struct pkt_metadata_entry *entry;

  if (size + reg->total_size > MAX_METADATA_SIZE)
    return -ENOSPC;

  entry = &reg->entries[reg->num_entries++];
  entry->id = assign_id();
  entry->sz = size;
  entry->offset = reg->total_size;
  entry->bit = reg->num_entries - 1;
  reg->total_size += size;

  return entry->id;
}

int bpf_set_packet_metadata_field(struct xdp_frame *frm, int id, void
                                  *value, size_t sz)
{
  struct pkt_metadata_entry *entry = get_metadata_entry_by_id(id);

  if (!entry)
    return -ENOENT;

  if (entry->sz != sz)
    return -EINVAL; /* user error */

  if (frm->rx_meta.sz < entry->offset + sz)
    return -EFAULT; /* entry allocated after xdp_frame was initialised */

  memcpy(&frm->rx_meta.data + entry->offset, value, sz);
  frm->rx_meta.fields_set |= BIT(entry->bit);

  return 0;
}

int bpf_get_packet_metadata_field(struct xdp_frame *frm, int id, void
                                  *value, size_t sz)
{
  struct pkt_metadata_entry *entry = get_metadata_entry_by_id(id);

  if (!entry)
    return -ENOENT;

  if (entry->sz != sz)
    return -EINVAL;

if (frm->rx_meta.sz < entry->offset + sz)
    return -EFAULT; /* entry allocated after xdp_frame was initialised */

  if (!(frm->rx_meta.fields_set & BIT(entry->bit)))
    return -ENOENT;

  memcpy(value, &frm->rx_meta.data + entry->offset, sz);

  return 0;
}

I'm hinting at some complications here (with the EFAULT return) that
needs to be resolved: there is no guarantee that a given packet will be
in sync with the current status of the registered metadata, so we need
explicit checks for this. If metadata entries are de-registered again
this also means dealing with holes and/or reshuffling the metadata
layout to reuse the released space (incidentally, this is the one place
where a TLV format would have advantages).

The nice thing about an API like this, though, is that it's extensible,
and the kernel itself can be just another consumer of it for the
metadata fields Lorenzo is adding in this series. I.e., we could just
pre-define some IDs for metadata vlan, timestamp etc, and use the same
functions as above from within the kernel to set and get those values;
using the registry, there could even be an option to turn those off if
an application wants more space for its own usage. Or, alternatively, we
could keep the kernel-internal IDs hardcoded and always allocated, and
just use the getter/setter functions as the BPF API for accessing them.

-Toke

