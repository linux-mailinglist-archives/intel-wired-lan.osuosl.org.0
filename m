Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC076886877
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 09:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57D11417DC;
	Fri, 22 Mar 2024 08:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hm4Up9o82rPC; Fri, 22 Mar 2024 08:49:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 768B540114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711097358;
	bh=dTYtO0jE8wKYKJFcNaD+LqthVoE8a2KnRw+uYik6gTg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cH7VJuPbtNgjG+x27hNY7XGgVO4tBLjGx3FZmPSTewCGrUdIVKjJ1zCbBZ4sJGvOs
	 8Stj3137bkS0XYP/cJB52Aawp468/Lv+Bk+tlQ/vszCuJL8jv6gVv7qHae8wyjrGPj
	 VeYZv2ppKIVE9yTi7yRkkV2dLMgwTkCXt+PbfhDxIFJyowJFNkesVmGmOkF5YPtDrz
	 mzMjutf9kuBWIGbWWMuKID2QKcftp3i/ECfXob9JR6+ysLSh5a/oLnLtusBrnEOVdn
	 HIRldchKPGfZaXMxFJAbkWDtOiplAyg4X4ZCl/wSDKenOvbrOakF0ipknXmT96s1Sy
	 IlLZZ9TMA5hrg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 768B540114;
	Fri, 22 Mar 2024 08:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 555281BF315
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 08:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E3A640114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 08:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id er8SFcKrtio5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 08:49:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.4;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BE99F4000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE99F4000B
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE99F4000B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 08:49:13 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MECGX-1rdRYY2bZd-006i6z; Fri, 22
 Mar 2024 09:48:39 +0100
Message-ID: <5412e9e1-2470-497a-a879-d28e6039be15@web.de>
Date: Fri, 22 Mar 2024 09:48:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Julia Lawall <Julia.Lawall@inria.fr>, kernel-janitors@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
 <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:9YXkvZdYpqeXj5WB8AcK0LWQYNWMZbgwO0vYGnbOxScaxdApu0A
 /wGrtYc+l2huJpHcvNNT/1tZcW/e7ub95xlO4cy1Zi2g5iveCJACnZEZAxlbdwyQfqkN5ee
 3JfFsFxlVMK775YZ8vqtGLBwf74q6UBIBZyWpm0F3PNzdPiKJdcSuT1zLtKuEqGCdgRbVOy
 9HIZtqoXS2nyv+XOb1+1g==
UI-OutboundReport: notjunk:1;M01:P0:eGYjQvfGa2w=;8aqjLC4e8Qn3i8gHlnKYxMR90PI
 otP3Ewl1/O20JuaFJwwDQibzoecYfetjeu9HAkew3SG+utku+ttOzFmVK5+nnJOF39MPo1dZJ
 Ht3GGhh5IUrvv82ADmD1A0w+f6++0BVbJcUX30PKHKz2ZRc5tNneT0vTREp+W5elGnouMV+x2
 TXjV/R0A7RVgJ9+hvPqMsUgEqvKa6GXbaH16ERyx/gLpirXkdFAsn4phqqWcY3AuiLgvp/z6D
 4pG3dYpEE3o0ZpXFtob3KUEJuzDQSmlxz0Ok2ANTBt43rLnNICwi8SPvYVOZYM4nqgXl2Fmu8
 xvFoytyWjrHCzbIONmIpHyT6uCG6fwfDc4s2U0n+/BIC+ebPdv4nLUHT248MsQleGKxpGZ7xe
 9wfA6QD6IA5nA70QnMYr4RDvI9oLKihilwDGw8rExQtkixGtDrsEBFRk6GjSqW6v0exz76oSy
 F74K6nFt/WkVHW5Kbuj4vWwegMapIwxDLAdA3Jn5U1NdSo3Y+tmpctsQCB7TmULsqQ1af3bOc
 L4uGN4ZaqKEuPVXX80aCa97ibUCSStQCzQWgvas7st7w4fhGwNgDGGlXbFFKBEfej2RU/rKZ4
 1nSYTE3/tRvFu6BUnPV7jmtWKW0lkuU/s688IhVHYgah6V/wyLP9+p+Xu9ZEGHSmkBUG1Qh3b
 6G8PI/cwldbw2t5R/4ZpUMYltcaTAKy7gQ3Nv4Z235ovhlOyRjPXtYHSASEPKcv6WU6TfoaUw
 Joe7kDDizCqbYkGbK2fbxZJG7Y5/zYA1rAVsSA2SZtLuZt+gcuhfQ2unsbbYd1odhctZE5Avd
 y+KFWCW0whvRwvg7LZgy8bzOrLOA+d1k2pKeNPb+oHRRM=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711097319; x=1711702119; i=markus.elfring@web.de;
 bh=dTYtO0jE8wKYKJFcNaD+LqthVoE8a2KnRw+uYik6gTg=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
 In-Reply-To;
 b=Sz+QOfoTD5Bpl9wGXJrzR7Ksj2hc9ZMWXKuPOVVkcJIo/2955grVbFz9Zkdlqq+1
 a3yjXRxAtaAEZlRun5zFoV8E2k03VmQPOlM03BzQjQtK9rLmwAkzBIL+4TJ+DVE9j
 QvpLEA95pWcJy/f4HblymlKI7wdYytyGtbqaES/4877+2ehtdioJb6hbQp31cVpQ0
 9y2WPLi1zLfG7tcLRHJn1HktVcNvXnbp5ygTFaIys19EBO9fuvRwOcs5vX0jpEGrG
 J1eeCBie4ftMdtGE5YLi4Dft6t+yCP4q0/peaFSiHsLazxJqgDdvIfDanQblKCuq3
 9H6qvkbL/dy7u9Wbcg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=Sz+QOfoT
Subject: Re: [Intel-wired-lan] ice: Fix freeing uninitialized pointers
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jonathan Cameron <jic23@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Does one prefer an initialization of null at the top of the function

Several developers got used to such a programming approach.


> or an initialization to a meaningful value in the middle of the function ?

Coding style preferences are evolving more with the growing support for
the discussed scope-based resource management (cleanup functions and guards),
aren't they?

Further developers can handle variable definitions at the beginning of
a compound statement (a code block) at least.
Corresponding clarifications will influence the change acceptance for such definitions
without adding extra curly brackets.
Would you like to consider design possibilities with scope reductions?

Regards,
Markus
