Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B656E2C73
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Apr 2023 00:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 447696FF6C;
	Fri, 14 Apr 2023 22:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 447696FF6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681511274;
	bh=8QRRSC3DpaNC8LwKvhhvLjjaB33X74k1vGifM/32kJc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rYVnn3hOGlpeUUVkuIvCcnFZv0jEy23I4t1tA2nc5h4BaA7iGIET/QfQoqklfYQ/j
	 hXNDSPc3MEeKzch/ZK48HwIOCJFIM5Z40z8vJJBe0xOUjbY31U53cowmfegPK+d1pm
	 CPeGVQXu2D2/CM+gZGqMIIZ1At04+CCT0N/U9PripLDNAn1aAh8174XwKXgHZ3uSie
	 WRT14SgoJSL/SmgGzIyjcdV7oZu5iLaBb0xbBcfp5rxVW92WOh4gKk4UdZY2rD5uY2
	 j5z6Zal/7BU6mnT6Vwid1FN8hQSQ7V5LbTxhXrtRYIyDZcbPvhlGub0BrfM4k9zbK/
	 sgfN41F+uPBnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eEMg7Vt0fWXK; Fri, 14 Apr 2023 22:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B4A26FFB9;
	Fri, 14 Apr 2023 22:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B4A26FFB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5991BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F7D342992
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F7D342992
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlkUNNPIgO9T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 22:27:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AC1F4298C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AC1F4298C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:27:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9D188648B3;
 Fri, 14 Apr 2023 22:27:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF39C433D2;
 Fri, 14 Apr 2023 22:27:45 +0000 (UTC)
Date: Fri, 14 Apr 2023 15:27:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20230414152744.4fd219f9@kernel.org>
In-Reply-To: <ZDnNRs6sWb45e4F6@sashalap>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <ZDb3rBo8iOlTzKRd@sashalap>
 <643703892094_69bfb294a3@willemb.c.googlers.com.notmuch>
 <d2585839-fcec-4a68-cc7a-d147ce7deb04@intel.com>
 <20230412192434.53d55c20@kernel.org> <ZDnNRs6sWb45e4F6@sashalap>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681511266;
 bh=bGa2hBLfqw75ceVdCVwZOl8+9M581nl0Ppk5w8lKJFE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RytCMLPpyW82XTHk6uJbE9bhzfL2vefnGXjIbDi6g/kL4pLfwVxnO+Z7E0LdMj00E
 3uaRf8bkxYiIKUGl7Bng26rt/bDJY/d9YMP9hWs1P3G8/bzs0wYTlFaUACmQer5Jos
 Zn/JckqlyYc6+E0QJCLDJ+gxUGjCfidYQl6ryH5k6kO9RM1NAt6sreqxNmTqTzBZvk
 zmoqMa6ZzlzYIqCGu0eul4lZvnE0e3yNYhwuehBBrtFLgZqlt7jzY3N+k+QyglqUVC
 n3M4HnixKdUKHA7NnoZm81D/Pc+W3ZHsiDHc8Ln2k5KvLHHRhVAdkABQr3ziNc9oyV
 IOwg/8S/s9I+g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RytCMLPp
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/15] Introduce Intel
 IDPF driver
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, pabeni@redhat.com,
 willemb@google.com, jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 14 Apr 2023 18:01:42 -0400 Sasha Levin wrote:
>> As I said previously in [0] until there is a compatible, widely
>> available implementation from a second vendor - this is an Intel
>> driver and nothing more. It's not moving anywhere.  
> 
> My concern isn't around the OASIS legal stuff, it's about the users who
> end up using this and will end up getting confused when we have two (or
> more) in-kernel "IDPF" drivers.
> 
> I don't think that moving is an option - it'll brake distros and upset
> users: we can't rename drivers as we go because it has a good chance of
> breaking users.

Minor pain for backports but I don't think we need to rename anything,
just move.

Or we can just leave it be under intel/, since there are not other
participant now. Unless perhaps under google/ is a better option?

Drivers are organized by the vendor for better or worse. We have a
number of drivers under the "wrong directly" already. Companies merge /
buy each others product lines, there's also some confusion about common
IP drivers. It's all fine, whatever. 

Users are very, very unlikely to care.

>> I think that's a reasonable position which should allow Intel to ship
>> your code and me to remain professional.  
> 
> No concerns about OASIS or the current code, I just don't want to make
> this a mess for the users.

It's not a standard until someone else actually adopts it. What stops
all the other vendors from declaring that their driver interface is a
standard now, too?

We have a long standing rule in netdev against using marketing language.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
