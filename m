Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ED09A2F1C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 23:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 563524029E;
	Thu, 17 Oct 2024 21:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JlTXsJh3XrEq; Thu, 17 Oct 2024 21:01:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D166402B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729198856;
	bh=bWq+ruIcIKBdrzvESTNZVd6SUP5vVMK9efcV5RxNrjQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FdTCOJRXeU2lgpY9A7+3h0+gc6DxxdhS0ere4Foz2dvXtUj9seTdpQkbO0yQQJsut
	 RDb/MXXd/ZBiLvqQVO6SbCXc9GDOd2d43jB+933u9yP2ReiwoQDR8a4O7GiIAJ4IQF
	 EFXFeY3FoRBbIGyuF7UrGETG2mDipK8JLarZCOMSu043F+Tu6bU1GyZ9viEh4HBGmW
	 06dbMvgjkgClRmNEES6l0/qtU9UDFaAjShvDCTmyNcLu8NcYY4h2a2a1NDTrZuSNog
	 0TGFdZHkL99JIaugtWySq0uFByS7jKXCbIJnVage1bp/b//IgdQ58RXnnFFYF4dEgU
	 C6tOwkY6FO8pw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D166402B0;
	Thu, 17 Oct 2024 21:00:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EB8127F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 21:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E2C98137A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 21:00:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X5dk0UcZLGgd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 21:00:49 +0000 (UTC)
X-Greylist: delayed 496 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 17 Oct 2024 21:00:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4F8498130A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F8498130A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=195.251.255.93;
 helo=vmail-relay.servers.aueb.gr; envelope-from=dds@aueb.gr;
 receiver=<UNKNOWN> 
Received: from vmail-relay.servers.aueb.gr (relay3.servers.aueb.gr
 [195.251.255.93])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F8498130A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 21:00:49 +0000 (UTC)
Received: from vmail-mta.servers.aueb.gr (localhost [127.0.0.1])
 by vmail-relay.servers.aueb.gr (Postfix) with ESMTP id CD142D8109D;
 Thu, 17 Oct 2024 23:52:31 +0300 (EEST)
ARC-Filter: OpenARC Filter v0.1.0 vmail-relay.servers.aueb.gr CD142D8109D
ARC-Seal: i=1; a=rsa-sha256; d=aueb.gr; s=arc201901; t=1729198351; cv=none;
 b=CclN22gjVNsXZu7Slhmu5DnFkZjg2oWU+ztPR9jNLbLjfQ5gtZSYdVqo1dUGT9tHbHFGv8pt1T/5hT2ZY3VVDqpBzl/newvu/ZeMqXFBs/D6f2etpRVd+76oUXb1ZBc5dgB4REZSfxmk8xPPh8iSYau6V24TAHT4JtnM2wF7fZO10ykYXpU7Onk1bcdMQCaOhpuuutiWzgjCqfvplLw2zcjUlQ8XariQyYC+85TgW6B+1W3amB9wJZgyNo0aMYxCvdbyZx3nXzmrXCTFl2c+vhOusEp2H7YhjpgIIyH1G3yXXaDx0ssDxe84mEkl9U96B9O9P9Bm5MDAku2je1M5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; d=aueb.gr; s=arc201901;
 t=1729198351; c=relaxed/simple;
 bh=lge5wnGdoh3bwdDot37KXXC1RLIrttI/fJtGkGmxe+M=;
 h=DKIM-Signature:Received:Message-ID:Date:MIME-Version:User-Agent:
 Subject:To:Cc:References:From:Content-Language:Organization:Phone:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=DAnD/4VDro58paR2zHCG7zmO7hkH364vsbhsAqFoywn1gipBSP/br9SLI9ZmH8BWOF5zWTGTCAmzGQLc3kIXZ2PfVhtNycupS/DNd83cAwJreKtMNyDdhd4qoTpVD8ZVLpl8kHwpKdr9DAGdt6l/FIHdsdCJRpKNq2Y7akrgt/EHnf01Wycf4oA4llnTLgebwmZtiOSbM9Oy3b0Y2S28teYtcZ3vvKGZI94vHKIxBMZ966DVczAuxIwF0LVlyy7fc5g0ZO16EbGKFxRJJaKm4I7lkaDkJ3w4dYoRSTQQSXWRkhDyUwfRJd9ALoOwSZI6i3ehtyTlQArgqrr29uFakw==
ARC-Authentication-Results: i=1; aueb.gr; none
Received: from [192.168.136.3] (ppp-2-86-73-54.home.otenet.gr [2.86.73.54])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: dds)
 by vmail-mta.servers.aueb.gr (Postfix) with ESMTPSA id 92A45D80F39;
 Thu, 17 Oct 2024 23:52:31 +0300 (EEST)
Message-ID: <ebf935a3-51d0-4e5e-859a-3e362365793c@aueb.gr>
Date: Thu, 17 Oct 2024 23:52:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
References: <20241017085851.1800065-1-dds@aueb.gr>
 <88e7ae89-27d2-4e17-8f82-f71f68bd26aa@intel.com>
From: Diomidis Spinellis <dds@aueb.gr>
Content-Language: el-en
Organization: Athens University of Economics and Business
Phone: +30 210 8203621
In-Reply-To: <88e7ae89-27d2-4e17-8f82-f71f68bd26aa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=aueb.gr; s=201901; 
 t=1729198351; bh=lge5wnGdoh3bwdDot37KXXC1RLIrttI/fJtGkGmxe+M=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=O5N8rkJGznvuXXutbtnr2KdaLHtCPwsTxkio9pc6S/FhN4fUEiOXINQsUOo6Q6BpI
 c/DdTHodXvauU8zQktlDGVdNBNtNu7Le/uJxiD92VHR0udTCs+S4sHU2SWHtP88Pzi
 a3DKlqPhDwkeFRJGB0JqSg6uX9SqPeCKUTJI/r1T7/9uBYh4Jm5FP8jidqkvN2GRlI
 0dES4jRMuvjLZpLfET5zTEjom18Wc+CxO4H0vqDowOFjpzU9PRQQ6B2Wk0IfVXipxC
 JN5AuKI15Gg3WiHYNaTuDvkBg3f3w3vShy2bPFY2ZIpwD6G3E0DzmkSdr2OjJ75We5
 kEHsWYKhEBW/A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=aueb.gr
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aueb.gr header.i=@aueb.gr header.a=rsa-sha256
 header.s=201901 header.b=O5N8rkJG
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Break include dependency cycle
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

On 17-Oct-24 23:36, Jacob Keller wrote:
 >
 > On 10/17/2024 1:58 AM, Diomidis Spinellis wrote:
 >> Header ixgbe_type.h includes ixgbe_mbx.h.  Also, header
 >> ixgbe_mbx.h included ixgbe_type.h, thus introducing a circular
 >> dependency.
 >>
[...]
 >>
 >> Signed-off-by: Diomidis Spinellis <dds@aueb.gr>
 >> ---
 >
 > The changes make sense. Which tree was this aimed at? I'd guess as a
 > cleanup without direct impact that its aimed at next?
 >
 > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Yes, "next" is fine, thank you.

Diomidis - https://www.spinellis.gr
