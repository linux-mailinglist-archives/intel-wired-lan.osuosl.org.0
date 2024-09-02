Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD60B969067
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 01:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62B274027A;
	Mon,  2 Sep 2024 23:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wocn1lT3Df4w; Mon,  2 Sep 2024 23:25:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE19B40926
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725319533;
	bh=aZPbEk837UIQeWK1zj9VvBLJMdvblUtE/V1kEMjqnzg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SWTZEM9C3ZLL6FZb5YgvrXCqnfFD16Tp9FItm8YX95xD3A5oPihi/dHsMPMLLHh/R
	 l7v83KuMDYuMWxRKmi0NwRD9Y28Q9ujFIvDCuvIPn+VT1woRDns9B0S6yvoh6jRQ88
	 Yng53RSC04Mn+rLJw9ixq/+TA7QwH2OidVO4YtoyPMSruPUf9qdBO22A7WypG2MLo8
	 iOqX7erbiOcvFaLBRl7yUt5iX8GfyFkmuPaeH2mDcD8tUWfUedQ/VCJkTYbr/wm4Cf
	 hWHh5zHDF6ry8kFC2uRaY9meyDEi6DppcBH46lrTnJKnt7rf7/0Uw1CCJrhzJ/2xWM
	 H8cg4cdPjgacA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE19B40926;
	Mon,  2 Sep 2024 23:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 713951BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 23:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DB536061B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 23:25:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g8N7L5B6-Nkh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 23:25:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 032A2605A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 032A2605A5
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 032A2605A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 23:25:29 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-374c4ea1d75so32550f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Sep 2024 16:25:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725319528; x=1725924328;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aZPbEk837UIQeWK1zj9VvBLJMdvblUtE/V1kEMjqnzg=;
 b=wDYePpOQGDJnvZg17b+gv02ezLh450g7exgywwO+/xW3MS+CieMrTzszxqoqtdyzns
 blHT3/R/kpOB7A8d9ZzJ8oa8+oUsRr9yoDSDpwbJTp3tukx38Z0fmXQpxbV0dTxEwd5M
 9jFcwNN/dafaDCYQFm7SBNwqmC9iyPng7Y922Nr9uHLhApZIcy6QLLgCpdK4I5Iud4o3
 h0RHiFO4KSOAK/ZUSDBr6eHaK1eJ/nmOLn/f4Y3tTAPTnLJJphKuGMmSmv2txcmvV8QA
 k1sbWpcTUqW084g38MXkjVGfaML0hAmquqFw36ZrN/MonhH9N0gmyPXv4RITgbPToLbs
 JkzA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGV3wkFeW5pc+sWiE1Qwp1RvRo3LqSmkRH4JP7Sbl22zIYspG+zINENjIWo0xB9Jkh76PhNoLQlOUYJXiiDnE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywa4LhTzKuxG/P5/NOldMGOvnh8BPTKz6S4CgbZUg7j9FPt24OW
 4aY7PrMPGKp9rl+NcsCvdyKm18cGpVuuz1dfC0xyQysyb+hjXZXS
X-Google-Smtp-Source: AGHT+IGodv6U83bhyOrivZT9MKQClD2J3mAAoi4gZsnTSM89crXcjvYge4qfExEjp1ElnMZIJ20BIg==
X-Received: by 2002:a5d:6d05:0:b0:374:c2e9:28aa with SMTP id
 ffacd0b85a97d-374c2e92e71mr2690184f8f.8.1725319527051; 
 Mon, 02 Sep 2024 16:25:27 -0700 (PDT)
Received: from skbuf ([188.25.134.29]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749eea50dasm12602549f8f.56.2024.09.02.16.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2024 16:25:26 -0700 (PDT)
Date: Tue, 3 Sep 2024 02:25:24 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20240902232524.cz77daj2tsajhrpb@skbuf>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
 <20240828-e810-live-migration-jk-prep-ctx-functions-v2-8-558ab9e240f5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-8-558ab9e240f5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725319528; x=1725924328; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aZPbEk837UIQeWK1zj9VvBLJMdvblUtE/V1kEMjqnzg=;
 b=F9gOqutJhPJyELl760+72P2bLQfw/ZQG6BJaBIJWFLoidkyiMQDkOrJ62kn6UQ6OMD
 9/CFlAe+MnCuCptaGXyXWNWpzDz4gPi0DxP4Eh+M6z0Bk1kFy6br825IfL6Y06oxsvuk
 kGxIwlOoJCsk0AZCuVWVo6wMxJ5P1aRBjruqi/N/8v3VRbUZU1MAqdFcviSbahMQ+AnR
 i0JGXvHEvXvNQ7fUKRgGJU/cVvXo8Yk4tAQpfGIynl+7MAxN4jW2386TuTDE3Px5Joxf
 8qkT5jYXXMAgERjfdUMOHuF+u6JZx9XZKQyG/zcbRPbboFMzVIu1VWPe8U1zG2gNRQPK
 9O6w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=F9gOqutJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/13] lib: packing: fix
 QUIRK_MSB_ON_THE_RIGHT behavior
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

Hi Jacob,

It's very cool that you and Przemek (and possibly others) spent the time
to untangle this. Thanks! Just a microscopic nitpick below.

On Wed, Aug 28, 2024 at 01:57:24PM -0700, Jacob Keller wrote:
> The QUIRK_MSB_ON_THE_RIGHT quirk is intended to modify pack() and unpack()
> so that the most significant bit of each byte in the packed layout is on
> the right.
> 
> The way the quirk is currently implemented is broken whenever the packing
> code packs or unpacks any value that is not exactly a full byte.
> 
> The broken behavior can occur when packing any values smaller than one
> byte, when packing any value that is not exactly a whole number of bytes,
> or when the packing is not aligned to a byte boundary.
> 
> This quirk is documented in the following way:
> 
>   1. Normally (no quirks), we would do it like this:
> 
>   ::
> 
>     63 62 61 60 59 58 57 56 55 54 53 52 51 50 49 48 47 46 45 44 43 42 41 40 39 38 37 36 35 34 33 32
>     7                       6                       5                        4
>     31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
>     3                       2                       1                        0
> 
>   <snip>
> 
>   2. If QUIRK_MSB_ON_THE_RIGHT is set, we do it like this:
> 
>   ::
> 
>     56 57 58 59 60 61 62 63 48 49 50 51 52 53 54 55 40 41 42 43 44 45 46 47 32 33 34 35 36 37 38 39
>     7                       6                        5                       4
>     24 25 26 27 28 29 30 31 16 17 18 19 20 21 22 23  8  9 10 11 12 13 14 15  0  1  2  3  4  5  6  7
>     3                       2                        1                       0
> 
>   That is, QUIRK_MSB_ON_THE_RIGHT does not affect byte positioning, but
>   inverts bit offsets inside a byte.
> 
> Essentially, the mapping for physical bit offsets should be reserved for a
							      ~~~~~~~~
							      reversed

> given byte within the payload. This reversal should be fixed to the bytes
> in the packing layout.
> 
> The logic to implement this quirk is handled within the
> adjust_for_msb_right_quirk() function. This function does not work properly
> when dealing with the bytes that contain only a partial amount of data.
> 
> In particular, consider trying to pack or unpack the range 53-44. We should
> always be mapping the bits from the logical ordering to their physical
> ordering in the same way, regardless of what sequence of bits we are
> unpacking.
> 
> This, we should grab the following logical bits:
> 
>   Logical: 55 54 53 52 51 50 49 48 47 45 44 43 42 41 40 39
>                   ^  ^  ^  ^  ^  ^  ^  ^  ^

These 16 bits should have been 55-40. Bit 46 is missing, and bit 39 is
extraneous.

Also, I honestly think that another "Byte boundary:" line would help the
reader see the transformation proposed as an example better. Like this:

 Byte boundary: |                       |                       |
       Logical:   55 54 53 52 51 50 49 48 47 46 45 44 43 42 41 40
                         ^  ^  ^  ^  ^  ^  ^  ^  ^

> 
> And pack them into the physical bits:
> 
>    Physical: 48 49 50 51 52 53 54 55 40 41 42 43 44 45 46 47
>     Logical: 48 49 50 51 52 53                   44 45 46 47
>               ^  ^  ^  ^  ^  ^                    ^  ^  ^  ^
> 
> The current logic in adjust_for_msb_right_quirk is broken. I believe it is
> intending to map according to the following:
> 
>   Physical: 48 49 50 51 52 53 54 55 40 41 42 43 44 45 46 47
>    Logical:       48 49 50 51 52 53 44 45 46 47
>                    ^  ^  ^  ^  ^  ^  ^  ^  ^  ^
> 
> That is, it tries to keep the bits at the start and end of a packing
> together. This is wrong, as it makes the packing change what bit is being
> mapped to what based on which bits you're currently packing or unpacking.
> 
> Worse, the actual calculations within adjust_for_msb_right_quirk don't make
> sense.
> 
> Consider the case when packing the last byte of an unaligned packing. It
> might have a start bit of 7 and an end bit of 5. This would have a width of
> 3 bits. The new_start_bit will be calculated as the width - the box_end_bit
> - 1. This will underflow and produce a negative value, which will
> ultimate result in generating a new box_mask of all 0s.
> 
> For any other values, the result of the calculations of the
> new_box_end_bit, new_box_start_bit, and the new box_mask will result in the
> exact same values for the box_end_bit, box_start_bit, and box_mask. This
> makes the calculations completely irrelevant.
> 
> If box_end_bit is 0, and box_start_bit is 7, then the entire function of
> adjust_for_msb_right_quirk will boil down to just:
> 
>     *to_write = bitrev8(*to_write)
> 
> The other adjustments are attempting (incorrectly) to keep the bits in the
> same place but just reversed. This is not the right behavior even if
> implemented correctly, as it leaves the mapping dependent on the bit values
> being packed or unpacked.
> 
> Remove adjust_for_msb_right_quirk() and just use bitrev8 to reverse the
> byte order when interacting with the packed data.

Yes, just bitrev8() should be exactly what is needed for the "MSB on the
right within a packed byte" definition.

> 
> In particular, for packing, we need to reverse both the box_mask and the
> physical value being packed. This is done after shifting the value by
> box_end_bit so that the reversed mapping is always aligned to the physical
> buffer byte boundary. The box_mask is reversed as we're about to use it to
> clear any stale bits in the physical buffer at this block.
> 
> For unpacking, we need to reverse the contents of the physical buffer
> *before* masking with the box_mask. This is critical, as the box_mask is a
> logical mask of the bit layout before handling the QUIRK_MSB_ON_THE_RIGHT.
> 
> Add several new tests which cover this behavior. These tests will fail
> without the fix and pass afterwards. Note that no current drivers make use
> of QUIRK_MSB_ON_THE_RIGHT. I suspect this is why there have been no reports
> of this inconsistency before.
> 
> Fixes: 554aae35007e ("lib: Add support for generic packing operations")

When there is no user-observable issue in mainline, I believe there is
no reason for a Fixes: tag, even if the bug is very real. My understanding
is that the role of the tag is to help the backporting process to stable.
Using it here could possibly confuse the maintainers that it needs to be
backported, even though it is spelled out that it needs not be.

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
Tested-by: Vladimir Oltean <olteanv@gmail.com>
