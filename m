Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 098A8B2E1FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 18:12:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9C4A8254D;
	Wed, 20 Aug 2025 16:12:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pAaqj5Vo9TUq; Wed, 20 Aug 2025 16:12:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 123BF83104
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755706326;
	bh=4lQnboCJ/SfpiSxnqVz4g3RDlcDQI6fBuRKe7d0k6ow=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Eh2T3ODDgB64X5iGqH+OR9mdVt6S8dC2WBQJeG0E20QvJb3lzVeQp6e40NO5mhNqf
	 ABfw964FrrmeV9kIqBacng75hwE6mhT9upLJW8IlQ9sVRBBSfzVP5oLdifTFPyjexQ
	 ASeW/v7fbvQozBN7C3jXyVU8qaDeuanl1bXTrsz4GH5F6N5Ukp3p4NAIOtfZ1suvpk
	 7cSyZtjAFCWrJ5qEQe0klOoMIQZCIDeznvO4uDSYVsFvm3HAPBKSkadTPLUkPa8l8c
	 aGeFCroJAcc/ZHCUw6Lkr4+8LUPPBji+GUSRUZIrheya1O00VIlhW87FsGOvffFvJ3
	 tXP2JBYGhMxTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 123BF83104;
	Wed, 20 Aug 2025 16:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CD5FDE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 16:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AE4660E53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 16:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SIfqsgzNXErF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 16:12:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E12560A68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E12560A68
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E12560A68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 16:12:03 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-24457f47000so137455ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 09:12:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755706323; x=1756311123;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4lQnboCJ/SfpiSxnqVz4g3RDlcDQI6fBuRKe7d0k6ow=;
 b=KzK2WhR0BCi3bRy3lSyYjYzNh9oXjx7HLWZMwNgnqbzmj740BdMKePi4fBU1/k6q6P
 qN73iZOzpaYwb65HztlTppOAGWayuqOBbA27uLIjE7o6fjenzLOd01mgdYHAAdFIGDJb
 B3sllxONC5rcJAXJXcYBQKPvy3JVgWLB8S1nPoOw5r8BXNmZwqJUoc9+qYKm1xuGiYHk
 Vo4nOioGwyCTVoa/zXxihDz/NtR91a/iwF4HTTi0GxE1h0GXgb0yP/2jqbaKSmDxuyvi
 W0KFwXsNXz/zw/Ghnp8Z6EZDQ43ttTdMknYDGqH1YIt3YflXa0P8+ZvIMS9CVOIzMjW5
 oCfw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXrXd7l8RIRKHEi0HAs+IJCsPzdE/ja2OoMTUY51Migst0oCWwTTX8W4oQH5T2+SDFqBk82BQLYZ54f/9Q9HWc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzJKREFWkjR5YC92LY6Rm+BGFf7jQC9xDtcKswI+0iFgxKkqqoN
 AFphbvohSvFw4mQtSF1pxXlt2ko5FM6Eqi/fk6C/Hjo0OMaMbwMuHbrq5hbn9dw6lhc=
X-Gm-Gg: ASbGncucZR3wX3pH5neMl8oaL2uPGgYnBPdvqtglCJMTX+1TqctN5fbDWLYczxOfq33
 Wn13dCjiIiXeowHzT216pjkvPl3KPNCx/e7WPnOpPOy+PnvSCZFZkMh9Zjyh/ZyG6Vk4yKYxzMa
 YzPN2TWVAIJvXBYI2mYVVz1CDJG6yWlCeztKY6X0WwH3aJyEgf9wL6Jk5Q7ygKHJFzA6nnfVKkg
 HtOuhYHACo147IGh95scya1jIH2Rax4DABKQNgGx7oq2w9LJBLmClh/1CUvmSDYVWylt2HMHQW7
 4dsLqfCkZ2XEhdx9BWnB8hFWSCdI1UHUelzSgZcwmyjb7FNVhAQAPgyQEK9TtXNJRbXchZYS+Lk
 V9IWZ0JNDM083NnUty1ubHKHB
X-Google-Smtp-Source: AGHT+IE/nk+N9o01n4/ZPtP5FhA/L8bgVJ0gJaRs1K8wSnasMCzJcj3TGsZPPTFT1q0y78NPONUbNw==
X-Received: by 2002:a17:902:d507:b0:245:f5b2:6cbb with SMTP id
 d9443c01a7336-245f5b270a2mr23013545ad.52.1755706322694; 
 Wed, 20 Aug 2025 09:12:02 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-245ed4c7588sm30840115ad.101.2025.08.20.09.12.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 09:12:02 -0700 (PDT)
Date: Wed, 20 Aug 2025 09:11:59 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aKXzzxgsIQWYFQ9l@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <089ba88e-e19d-40eb-844d-541d39e648e8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <089ba88e-e19d-40eb-844d-541d39e648e8@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755706323; x=1756311123; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=4lQnboCJ/SfpiSxnqVz4g3RDlcDQI6fBuRKe7d0k6ow=;
 b=FCEiAGElh8+D9zVedUsTUCK8a22/1H706CdeGvDZzlDLnNISvwSyeR6PyAaPXSaYon
 uOMHWQCfUjWN7bommu60R1BsOc6Xn+/irSC09wejwsqHqzkIl6CcdpnqiQZdCmH66U7U
 nCFSTizbcFV6bGr701j0GNCrcnDtRzVxYDzUi2H0uf018R5Bkglv5BC7RwMx+TLBrlZg
 lXqc8JfQDOfaaVbkfLPsKvXl/jH8iSZW2E7PyngiNsDrrZ9VfcJ8YqFmj5svFCI/pvyc
 A9ldPF00dQvbRgZz2kwUcU+qLz30lgpU2d7CXgyai24FExyhcW51nZlLhzihz3/niRMI
 oWjA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=wbinvd.org header.i=@wbinvd.org
 header.a=rsa-sha256 header.s=wbinvd header.b=FCEiAGEl
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wednesday 08/20 at 11:41 +0200, Przemek Kitszel wrote:
> On 8/20/25 08:42, Michal Schmidt wrote:
> > On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
> > > The same naming regression which was reported in ixgbe and fixed in
> > > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > > changes") still exists in i40e.
> > > 
> > > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > > ("devlink: let driver opt out of automatic phys_port_name generation").
> > > 
> > > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> > 
> > But this one's almost two years old. By now, there may be more users
> > relying on the new name than on the old one.
> > Michal
> > 
> 
> And, more importantly, noone was complaining on the new name ;)

I'm just guessing with the Fixes tag, I didn't actually go back and try
to figure out when it broke. Let me double check, it would certainly
make more sense if it broke more recently.

But there are a lot of reasons I still think it should be fixed:

	1) I have ixgbe and i40e cards in one machine, the mis-match
	   between the interface naming pattern is irritating. Can't we
	   at least be consistent within the same manufacturer?

	2) The new names have zero real value: "enp2s0fX" vs
	   "enp2s0fXnpX", the "npX" prefix is entirely redundant for
	   this i40e card. Is there some case where it can have meaning?
	   I apologize if I'm glossing over something here, but it looks
	   entirely pointless. If it solved some real problem, I'd be a
	   lot more amenable to it.

	3) It's a userspace ABI regression which causes previously
	   working servers to be unable to connect to the network after
	   a simple kernel upgrade.

And, at the end of the day, it *is* a userspace ABI regression. If it
matters enough in ixgbe to warrant a *second* userspace ABI regression
to fix it, I think it warrants that in i40e too.

Thanks,
Calvin
