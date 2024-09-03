Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E621969094
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 02:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9B6B402C1;
	Tue,  3 Sep 2024 00:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iHEUYkNhecdl; Tue,  3 Sep 2024 00:08:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B1E0402CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725322089;
	bh=jverNQzc8OEnv1hJ+On8rPhs7dBruz9IRY9b92+fQ5I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kHxXQIgK400tRLKCnugrmkYevonup6dGnQ0gSuxZY7bOIQAD75ZxXUDIqP4xJzBt5
	 cJZlQmSTbsZLEnFvftAYLY6vXNGgYjE5TUuTqv5gQtXx4ZLjMRI1E1b2bXj9dpjkoS
	 Rrpi1ZkLLNIYE6PLXVzboLop2WupcG0jtYBwu3H08DGEtc4ny/kzNcQRlr2NSRoBjj
	 QDWb/4GaQhoqp9xZEHckoyq47nY89Fyp8pKwDfuXDTWFV0QNW5gML3T/AEp9ENXs0T
	 T7cxhjxMLJ3NlbDCQr06UnTwnfQxle+c/rMX/8vtTuwwWOF62bdsniGjVRTUGwhXfJ
	 RhR6LeG9Vvd2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B1E0402CC;
	Tue,  3 Sep 2024 00:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 689731BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 00:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53B2680EB9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 00:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 43fpCsLIlJoZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 00:08:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D1E680EAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D1E680EAB
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D1E680EAB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 00:08:06 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-42bbbe94b88so5023165e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Sep 2024 17:08:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725322084; x=1725926884;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jverNQzc8OEnv1hJ+On8rPhs7dBruz9IRY9b92+fQ5I=;
 b=Cl+jQKswl+VHYPia6MElE+AiPZ/GN9jHPwR4x9a2/QvxH1IzgXMVA3OMZLzwVGVIAZ
 Yk/aKxZhdjyB4BhYBDf2O4dFDVhkcmpgCbl1JHyyJXvczwjrJgpvm+p1hLBQJ7vwW8o6
 giNp1ORGcecHEP0zKNl86lIoORI8cnlU03jRlN6m++Dx1vgDcGw6jEi5gy2IQjJNMkGY
 9Vd3sP2BpNWdnwV0AwgyrdrVZubE9vTdYAZuSSq6YCfi0VBIb1y9OrGB0LctqC9OA5pF
 cS3V88pg9HJBtFvI3X1B/rfiEVvDb9TjLTj/CS3dBNwvIdAxBL4nlOEYXD7zRNaBclNn
 IkPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTaw+x25JqWDbOJaBfqc5nOfjA9L3VQePZNcE6m7A25T++OmgAOiMUTT/12xkeuA8eJOOJlHMgvzZsjePOyH8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8+ybWFsFIC8CfWBPjFyDbO7pfNHT98UqrCs8d7p/ukYP8i+4J
 ahfaGZiImG6b+NGkhFJcTe2+BVdol4jkrU5MCe04Q8fIUgaQURFtvYYBcgvyINE=
X-Google-Smtp-Source: AGHT+IECfz0b7w8YnRDzE9ye+95wL81FU5aqo1+RnHHS6qTUiapghUcV1Vxc5qXT7VPhZnE/K+fgpQ==
X-Received: by 2002:a05:600c:4f4a:b0:426:6fc0:5910 with SMTP id
 5b1f17b1804b1-42bbb10d61dmr48457865e9.1.1725322083046; 
 Mon, 02 Sep 2024 17:08:03 -0700 (PDT)
Received: from skbuf ([188.25.134.29]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bbf15b9b1sm111758835e9.10.2024.09.02.17.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2024 17:08:02 -0700 (PDT)
Date: Tue, 3 Sep 2024 03:08:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20240903000800.ue77eim4664dhy4p@skbuf>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
 <20240828-e810-live-migration-jk-prep-ctx-functions-v2-10-558ab9e240f5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-10-558ab9e240f5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725322084; x=1725926884; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jverNQzc8OEnv1hJ+On8rPhs7dBruz9IRY9b92+fQ5I=;
 b=jPxWEcgchfi5MXdpiglsWTF46Cq40OWHnBi+4W+eGOhkYMemTgyf0HExhhe244RMnM
 uwqua11OsPdwAm+SoGG9REbZ0Q0lq3eL4LiNLGm+66Rl6Aueg/vd3lPuQZOwbALj1czk
 RN8Gxp6fY+2yMCOlCcSz5Ef3I753xqT/26rctwsNWyuQaHnJeOZGfpvjkk+kNabFNXWd
 ZMnKx1v+PGF7NM4aFtiGhZiBFSO6+WpEUjeZ6MVl6ht3Un2HlebEXdC4i5XpEdDMpct0
 cDBUwNuu+t5BLBR+S4ePPnLoW/Sz3PJ8REs/48+vOrN3EKKT7AwECaxEEekDqE6TRVcU
 R8og==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jPxWEcgc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: use
 <linux/packing.h> for Tx and Rx queue context data
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
Cc: netdev <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 28, 2024 at 01:57:26PM -0700, Jacob Keller wrote:
> The major difference with <linux/packing.h> is that it expects the unpacked
> data will always be a u64. This is somewhat limiting, but can be worked
> around by using a local temporary u64.
> 
> As with the other implementations, we handle the error codes from pack()
> with a pr_err and a call to dump_stack. These are unexpected as they should
> only happen due to programmer error.
> 
> Note that I initially tried implementing this as functions which just
> repeatably called the ice_ctx_pack() function instead of using the
> ice_rlan_ctx_info and ice_tlan_ctx_info arrays. This does work, but it has
> a couple of downsides:
> 
>  1) it wastes a significant amount of bytes in the text section, vs the
>     savings from removing the RO data of the arrays.
> 
>  2) this cost is made worse after implementing an unpack function, as we
>     must duplicate the list of packings for the unpack function.

I agree with your concerns and with your decision of keeping the
ICE_CTX_STORE tables. Actually I have some more unposted lib/packing
changes which operate on struct packed_field arrays, very, very similar
to the ICE_CTX_STORE tables. Essentially two new calls: pack_fields()
and unpack_fields(), which perform the iteration inside the core library.
(the only real difference being that I went for startbit and endbit in
their definitions, rather than LSB+size).

I came to the realization that this API would be nice exactly because
otherwise, you need to duplicate the field definitions, once for the
pack() call and once for the unpack(). But if they're tables, you don't.

I'm looking at ways in which this new API could solve all the shortcomings
I don't like with lib/packing in general. Without being even aware of
ICE_CTX_STORE, I had actually implemented the type conversion to smaller
unpacked u8/u16/u32 types in exactly the same way.

I also wish to do something about the way in which lib/packing deals
with errors. I don't think it's exactly great for every driver to have
to dump stack and ignore them. And also, since they're programming
errors, it's odd (and bad for performance) to perform the sanity checks
for every function call, instead of just once, say at boot time. So I
had thought of a third new API call: packed_fields_validate(), which
runs at module_init() in the consumer driver (ice, sja1105, ...) and
operates on the field tables.

Basically it is a singular replacement for these existing verifications
in pack() and unpack():

	/* startbit is expected to be larger than endbit, and both are
	 * expected to be within the logically addressable range of the buffer.
	 */
	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen))
		/* Invalid function call */
		return -EINVAL;

	value_width = startbit - endbit + 1;
	if (unlikely(value_width > 64))
		return -ERANGE;

so you actually need to tell packed_fields_validate() what is the size
of the buffer you intend to run pack_fields() and unpack_fields() on.
I don't see it as a problem at all that the packed buffer size must be
fixed and known ahead of time - you also operate on fixed ICE_RXQ_CTX_SZ
and ... hmmm... txq_ctx[22]? sized buffers.

But this packed_fields_validate() idea quickly creates another set of 2
problems which I didn't get to the bottom of:

1. Some sanity checks in pack() are dynamic and cannot be run at
   module_init() time. Like this:

	/* Check if "uval" fits in "value_width" bits.
	 * If value_width is 64, the check will fail, but any
	 * 64-bit uval will surely fit.
	 */
	if (value_width < 64 && uval >= (1ull << value_width))
		/* Cannot store "uval" inside "value_width" bits.
		 * Truncating "uval" is most certainly not desirable,
		 * so simply erroring out is appropriate.
		 */
		return -ERANGE;

   The worse part is that the check is actually useful. It led to the
   quick identification of the bug behind commit 24deec6b9e4a ("net:
   dsa: sja1105: disallow C45 transactions on the BASE-TX MDIO bus"),
   rather than seeing a silent failure. But... I would still really like
   the revised lib/packing API to return void for pack_fields() and
   unpack_fields(). Not really sure how to reconcile these.

2. How to make sure that the pbuflen passed to packed_fields_validate()
   will be the same one as the pbuflen passed to all subsequent pack_fields()
   calls validated against that very pbuflen?

Sorry for not posting code and just telling a story about it. There
isn't much to show other than unfinished ideas with conflicting
requirements. So I thought maybe I could use a little help with some
brainstorming. Of course, do let me know if you are not that interested
in making the ICE_CTX_STORE tables idea a part of the packing core.

Thanks!
