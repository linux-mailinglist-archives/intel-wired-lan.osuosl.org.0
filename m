Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E5880FB41
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 00:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A0C341B19;
	Tue, 12 Dec 2023 23:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0C341B19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702423230;
	bh=xl7IA9bzTT+W4L/q0W65kpYTwZPLFYU09IiJlByajdU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rzmy5RgTaBI+n2p1px/enYRZQldvfj3u0gYtt0UpJRrJXLB3OBooI/yQixrRNhaEj
	 5/lkb8L+0Z7XlPFzz64ZdNKgAS3iDFn7VHbxcq0F4T3CICEjx8anMMq2HRKmTJSUfd
	 FMSByB+eYaP25NDJ+dnuiKLguv2r97FnhcLwbdBoYom6VHdPMNc5WwVGDTWKLfl6Dn
	 Y/WTm9CkvzAp6HN6dLM+tHI1al44D3rW4Ll4JBeTXNk0+bSmW/ehU5a8Qrj141Y5tJ
	 uTRk9yeGDtQmIiVGN5GwRMdmKaM/WRTYe/MeZoZgObIu/dviFXtifceBYHLhxGMLpz
	 J+oJgv7362KZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tLsoQpWmHZea; Tue, 12 Dec 2023 23:20:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BFA741B13;
	Tue, 12 Dec 2023 23:20:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BFA741B13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 693641BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 23:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DAA360BE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 23:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DAA360BE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nVi83tO4xhWn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 23:20:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5B5560AE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 23:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5B5560AE1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 88C3361A1D;
 Tue, 12 Dec 2023 23:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB36CC433C8;
 Tue, 12 Dec 2023 23:20:21 +0000 (UTC)
Date: Tue, 12 Dec 2023 15:20:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231212152020.4a24b2f7@kernel.org>
In-Reply-To: <6ba1e424-9903-43db-b567-32a864b896c9@intel.com>
References: <20231211025927.233449-1-chentao@kylinos.cn>
 <20231212132851.59054654@kernel.org>
 <6ba1e424-9903-43db-b567-32a864b896c9@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702423222;
 bh=MmuTxz83cx0n6rxBCcxvgqykYUBl9tgr/pJ/GiWM7m4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=seNusqXb36VT70NM24G3CFxzt/BfIWZGd/uw4bohuVn1NxOGzFvQSjxO/JMYuiqYb
 ydn6LffW/t3l0JT0daqOGkmVfJ8CgXMJwxrleNy8AiUmb03ieMSvnrKTDDOBjb1zp2
 r/+QH7/32OfnnZJ2XsgqA9b6JNJZmOLvr+5sGYCNBOxCsV2Yel5iKuevc7fKX/33f+
 dj5fs8Ll5W+eYO4atEyS1CECRtY4psP+oEuQrjThJYBN2jAZ/5klO90mOCR0aMXl3g
 TqfoyNi91vCdl3YzcfESaeKcbNzs3TFcAsVoWO7ZhohvoIQ5AQTQWES68W6Mnc+U8P
 0zn5jAmYXm9PA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=seNusqXb
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Fix null pointer dereference in
 iavf_print_link_message
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
Cc: Kunwu Chan <chentao@kylinos.cn>, Kunwu Chan <kunwu.chan@hotmail.com>,
 przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 12 Dec 2023 15:05:19 -0800 Jesse Brandeburg wrote:
> On 12/12/2023 1:28 PM, Jakub Kicinski wrote:
> > On Mon, 11 Dec 2023 10:59:27 +0800 Kunwu Chan wrote:  
> >> kasprintf() returns a pointer to dynamically allocated memory
> >> which can be NULL upon failure.
> >>
> >> Fixes: 1978d3ead82c ("intel: fix string truncation warnings")  
> > 
> > No need for the allocation here, print to a buffer on the stack.  
> 
> Sure, but I think that just takes us full circle back to where we
> started. reverting this to the previous code will add back W=1 warnings.
> 
> The whole point of the commit mentioned above was to get a reasonable
> implementation that won't cause string truncation warnings. Is there
> some trick I don't know about to get an allocation which will not
> trigger snprintf and friends to print warnings from -Wformat-truncation

Hm, it'd be nice if there was a flavor of snprintf which explicitly
doesn't trigger this warning. Or perhaps a marking for the output
buffer that says "truncation OK".

Absent that, can we print to a buffer on the stack and copy?
The link message is probably meh, but automation may get quite
confused if a NIC suddenly stops reporting FW version..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
