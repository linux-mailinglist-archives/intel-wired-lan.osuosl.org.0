Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4D3B30D81
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 06:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 541264080C;
	Fri, 22 Aug 2025 04:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QAK5sMzjhdip; Fri, 22 Aug 2025 04:23:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BD174080A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755836607;
	bh=8OYbr6Zeb0In7ciWZAGGuuclyk12KWAFQqeCkPJi8ew=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TevoRn9jW0LgdYHtYxTO5ueV041de2ppkBWlB8Gw/VdCd9wtHQbcKlswejgbb/Ir7
	 RklvRn092Fr9icVIHgOKMz03S4gNhSXcuqjaAUmLRmJVuSM5jxrEbIk86wstFIXuEM
	 ix59/4CLEqmUIwYEltDWYUITlbB41i1ZBqTO0D350Xg7vn7vHaMg9JvPJW9xJ8aMH4
	 nhesqc+MQeQ9nfMNMpIaYFpnIhAQdDRbk9W9EjEcjJc35ZSkrSKHpMPabUjxKD4OQp
	 tDhdvmaNJclGCLxHHpfYFit3uQwXWqY+JKKRz3QFStmsLbUxloCEQX+A1FnOYdmHj+
	 2KmRsk/kIi54g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BD174080A;
	Fri, 22 Aug 2025 04:23:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ECB641C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 04:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEB37403D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 04:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1h9Bd8a2HkBu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 04:23:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::532; helo=mail-pg1-x532.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DCBAB403C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCBAB403C5
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCBAB403C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 04:23:23 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-b477029ea5eso1598367a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 21:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755836603; x=1756441403;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8OYbr6Zeb0In7ciWZAGGuuclyk12KWAFQqeCkPJi8ew=;
 b=YeHkXIwQGL3Xfy7Npekxd0v5HaVVXfj9cRtreLcsLmL/b+Z75Ppus8lfx9scWNYhpe
 uQQZYdUCNSE6pYcQ2sXHWMhUxpf0UstpB8VDo2IqX1AAjmvoth+vziEdOHzQVBVt92Eu
 dhHEjFzOOOqpiRltz+SG1hGNqH77kc3HkObQCG1eFu4YI6M1Vo0ICfjzfSMxdJuloeEI
 +Fpq03pbMc0pYWGgOJbDTJXY8GrNgSGv3XM5NtDvkccjEdVn8Vlu3+Bz/Pz2SRRjqD12
 t61S7sghYW3fmhI5Jnu7Gp6OUkAi4y6NbFJDDe34Tab6KYQLhuJWphdHByiefDsUdzGx
 3auQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlO9thzgVEzgiGtvAK3yaDKR2rLWkOdX+2kXL5vvfaUT5TQVeS+mnSwEmuhTSc+NtzfD4jzBoeaJqPt9HbJlg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7M5BFLLbbzmm+rxDpxl5aEBAHtYUIPXHtfYIFk3vc6pUmaq85
 2FM839t958eb6aLXfmphNyzW/QoqOCV+FAgDPte36TK9IgoABXN3ftWsyXVPgrhmE40=
X-Gm-Gg: ASbGncv3fgtn+H3tOS6dJtPbSPJ2Cy9+Fw11xkrx3Apyqyga56AZpc5vdgwem1dy3LG
 j/LH2KVoYB4u/fqD7HSwXY7wPxZG7K1f51HufTqYisyXMet5EB8ViG8n8RP76qUE9Zfs+S8j4dd
 kqZeTDEoyPaCXIYw691bV0hbihTdy1qyxnNWs7H3MVUg/hasb1VZbImVLrD3cvwsYC2A1gJELX0
 f7ymvG7Frks89v3tekkinQpABaJhi3tRIqfCGZIl4dEG9g7NB2MVvO0oiyftiNxIO2tLTmRfQ+B
 5WVeRNLOGZkuKkqQAEpG1jP8PLDQ4ShF/mvmC09y0/3wue3vI1Jk17Nj2uzR2KxauOq5qJFpFvu
 dvfsRtbXMsaZ6kuTDYSikvdy6
X-Google-Smtp-Source: AGHT+IGkr6KG1Nu9z0iOHepL9KnzdBIr5e1tJ3KsMa+xu1RZViZOdy4PjdjRbUW4MQjoOYoW45A27Q==
X-Received: by 2002:a17:902:ce01:b0:245:fcc6:a9d8 with SMTP id
 d9443c01a7336-2462efbe05amr28662875ad.54.1755836603033; 
 Thu, 21 Aug 2025 21:23:23 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-24636064715sm8694255ad.29.2025.08.21.21.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 21:23:22 -0700 (PDT)
Date: Thu, 21 Aug 2025 21:23:20 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aKfwuFXnvOzWx5De@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
 <aKcr7FCOHZycDrsC@mozart.vkv.me>
 <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755836603; x=1756441403; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=8OYbr6Zeb0In7ciWZAGGuuclyk12KWAFQqeCkPJi8ew=;
 b=h0nMAMWOszzBoovw5BKNGd/eIGamulBE2QfYyYkR7Xl0e28D41W6A8ObyUAqMaT49Y
 3EUnd1auQCm3W+auo08UX5yL9Mtz+/mlsR6b1Zp7JP8GLR8WvrNw1VNWW4E7hJv1f1MT
 bhjzIULk5PYiChGEunlrWixH4tPTLFrvWkFecIK3AOL1WnidwhrcitJv1HFJ+suoiJRj
 1U8nZqwfhxuIOrHqDJyrOAV+b9NQmITG35v9L/1GvQIhURfNIp++chlUpVGIFa9mT+Oy
 B0UTHzp4WB4WBdFznffbHav6AGphPPYkqMYllxgKtkd2xE+LsBHJoMZ7BE62LbTiUMzJ
 2p8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=h0nMAMWO
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

On Thursday 08/21 at 22:39 +0200, Przemek Kitszel wrote:
> On 8/21/25 16:23, Calvin Owens wrote:
> > On Thursday 08/21 at 10:00 +0200, Przemek Kitszel wrote:
> > > On 8/20/25 19:41, Calvin Owens wrote:
> > > > On Wednesday 08/20 at 08:31 -0700, Calvin Owens wrote:
> > > > > On Wednesday 08/20 at 08:42 +0200, Michal Schmidt wrote:
> > > > > > On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
> > > > > > > The same naming regression which was reported in ixgbe and fixed in
> > > > > > > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > > > > > > changes") still exists in i40e.
> > > > > > > 
> > > > > > > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > > > > > > ("devlink: let driver opt out of automatic phys_port_name generation").
> > > > > > > 
> > > > > > > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> > > > > > 
> > > > > > But this one's almost two years old. By now, there may be more users
> > > > > > relying on the new name than on the old one.
> > > > > > Michal
> > > > > 
> > > > > Well, I was relying on the new ixgbe names, and I had to revert them
> > > > > all in a bunch of configs yesterday after e67a0bc3ed4f :)
> > > 
> > > we have fixed (changed to old naming scheme) ixgbe right after the
> > > kernel was used by real users (modulo usual delay needed to invent
> > > a good solution)
> > 
> > No, the "fix" actually broke me for a *second time*, because I'd
> > already converted my infrastructure to use the *new* names, which match
> > i40e and the rest of the world.
> > 
> > We've seen *two* user ABI regressions in the last several months in
> > ixgbe now, both of which completely broke networking on the system.
> > 
> > I'm not here to whine about that: I just want to save as many people out
> > there in the real world as I can the trouble of having to do the same
> > work (which has absolutely no benefit) over the next five years in i40e.
> > 
> > If it's acceptable to break me for a second time to "fix" this, because
> > I'm the minority of users (a viewpoint I am in agreement with), it
> > should also be acceptable to break the minority of i40e users who are
> > running newer kernels to "fix" it there too.
> > 
> > Why isn't it?
> 
> I think we agree that it is ok-ish to sometime break setups for bleeding
> edge users, then fix (aka undo). It's bad that this time it was with
> effect equivalent to the first breakage (hope that it was easier to fix
> locally when it occurred second time in a row).

I just want to re-emphasize, it was *not* my intent to gripe at you
about this. A big reason I test new kernels is in the hope I can hit
things like this myself and get them fixed before they impact the wide
userbase, I'm only frustrated I'm probably too late here to do that.

> But we dispute over change from Oct 2023, for me it is carved in stone
> at this point. Every user either adjusted or worked it around [1]

IMHO the date of the release (Jan 2024) is more relevant than the
commit date, but it's not really that different in this case.

I think there's merit to the idea that the lack of complaining is a sign
that most users have not had to adjust yet, because if they had, they'd
have complained about it. But I don't have any real data either way.

The objections raised over the new interface naming in ixgbe are in no
way specific to ixgbe. You can s/ixgbe/i40e/ any mail about it and
nothing really changes. They're generalized objections against the
renaming of interfaces, so from a certain POV people *are* actively
complaining.

> > > > And, even if it is e67a0bc3ed4f that introduced it, v6.7 was the first
> > > > release with it. I strongly suspect most servers with i40e NICs running
> > > > in the wild are running older kernels than that, and have not yet
> > > > encountered the naming regression. But you probably have much better
> > > > data about that than I do :)
> > > 
> > > RedHat patches their kernels with current code of the drivers that their
> > > customers use (including i40e and ixgbe)
> > > One could expect that changes made today to those will reach RHEL 10.3,
> > > even if it would be named "kernel 6.12".
> > > 
> > > (*) the changes will likely be also in 10.2, but I don't want to make
> > > any promises from Intel or Redhat here
> > 
> > But how many i40e users are actually on the most recent version of RHEL?
> > Not very many, is my guess. RHEL9 is 5.14, and has the old behavior.
> 
> RHEL 9 backported devlink for i40e in July 2024 [0], together with undo
> of interface name change [1] (this likely tells why there were zero
> complains from RH users).
> 
> [0]
> https://gitlab.com/redhat/centos-stream/src/kernel/centos-stream-9/-/commit/bcbc349375ecd977aa429c3eff4d182b74dcdd8a
> 
> [1]
> https://gitlab.com/redhat/centos-stream/src/kernel/centos-stream-9/-/commit/5ab8aa31dc2b44fbd6761bb19463f5427b9be245

Heh. Thank you very much for checking that, and for the links.

> > 
> > If you actually have data on that, obviously that's different. But it
> > sounds like you're guessing just like I am.
> 
> I could only guess about other OS Vendors, one could check it also
> for Ubuntu in their public git, but I don't think we need more data, as
> ultimate judge here are Stable Maintainers

Maybe I'm barking up the wrong tree, it's udev after all that decides to
read the thing in /sys and name the interfaces differently because it's
there...

In any case, Debian stable is on 6.12 and didn't patch it (just
checked), so I concede, it is simply too late :/

Thanks,
Calvin
