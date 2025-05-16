Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF57ABA34F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 20:58:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E32F561150;
	Fri, 16 May 2025 18:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sOZHld38_sXG; Fri, 16 May 2025 18:58:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB4586130E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747421915;
	bh=jO1aoKUfzroCW+NlVuOORqYdJ4OCGWfneOMBkkXZxgY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qrELCL8xPSSrDN5R8w4ZdQv/4CpM8/FxaUIgjsOydSOJhES5m0rWj/8FwK4TCj4Xs
	 toG8ZHu4/T592jJ59r1oHGZMvu9hecFVPgh0CgERUQaE1TghOGLI5YHFbhmMJ0FJOu
	 7DnqO4qJF3TACBgYo0owA0jRzvyD3ge0roxYCTaCVOeuGL/OaoeUipoPhR1Kuai6fA
	 6bO68mkNJ5YwvNlHWhLEW+FrN40ZwQ3Zx3Wg3euDs2/ZiOShtC+U2LBDFZ8SOstJGT
	 6xPj/l8otSbn18daBS71k4klgg0lw8e4NOPeC7j57nz0j6eGrygIlN44jwnMjLif7B
	 PjdIn2bvuNB1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB4586130E;
	Fri, 16 May 2025 18:58:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FC7B1AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 18:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6196B40454
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 18:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WDV2LMZXfddP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 18:58:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83EEF402E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83EEF402E5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83EEF402E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 18:58:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BE5125C0DE9;
 Fri, 16 May 2025 18:56:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E86C4CEE4;
 Fri, 16 May 2025 18:58:29 +0000 (UTC)
Date: Fri, 16 May 2025 19:58:27 +0100
From: Simon Horman <horms@kernel.org>
To: Anton Nadezhdin <anton.nadezhdin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, richardcochran@gmail.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20250516185827.GG3339421@horms.kernel.org>
References: <20250515123236.232338-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515123236.232338-1-anton.nadezhdin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747421910;
 bh=3AY5SGR35cR14wQVfUdYCMitT4wK09ObHsv/J+MjvWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZnoD0jW9odqfMZaOLRfBIP+YETeoYQJC3IvquhERpMfRK6I9PNKYB5AgZrE50kj/w
 yGLGOozhLsOiR1hUYq9kSI/dqxp+L1faMsWCMi2ZtzLSW5Md0D6RgqN0OrSB2nlDGh
 U44sX2F5YLpt3JPSgqCKNjnsZEXkHncsHYQ+um8f8JUxnM4hYhB4DIH/HCzRifPR3V
 3nAz8on/EXeG+UhfWrTdBgvz9Iar9LnQ22cLF2ZcMU/p/7Xad66NV9L/64TuUgq6Eu
 3TPurFA/Elkv34XE/Rjaubo6CzK61UiK3uaQNyXhNxjVfd1yokTSoMIpQ/MA+dQR+6
 JDhMptlGCFa9w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZnoD0jW9
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice/ptp: fix
 crosstimestamp reporting
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

On Thu, May 15, 2025 at 02:32:36PM +0200, Anton Nadezhdin wrote:
> Set use_nsecs=true as timestamp is reported in ns. Lack of this result
> in smaller timestamp error window which cause error during phc2sys
> execution on E825 NICs:
> phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument
> 
> Before commit "Provide infrastructure for converting to/from a base clock"

Hi Anton,

Thanks for your patch.

I have some feedback on the form of the commit message, I hope it is useful.

The correct syntax for fully citing a commit is:
commit 6b2e29977518 ("timekeeping: Provide infrastructure for converting
to/from a base clock")

> the parameter use_nsec was not required. "Remove convert_art_to_tsc()"
> rework shall already contain use_nsecs=true.

I think it would be clearer to express this something along these lines.

  This problem was introduced in commit d4bea547ebb57 ("ice/ptp: Remove
  convert_art_to_tsc()") which omitted setting use_nsecs to true when
  converting the ice driver to use convert_base_to_cs().

Or if there is only one Fixes tag, as I propose below, and there is
no reference to any other commit in the commit message, you could shorten
it a bit to.

  This problem was introduced in the cited commit which omitted setting
  use_nsecs to true when converting the ice driver to use
  convert_base_to_cs().

OTOH, if you think it is useful you could add something like this. But
IMHO it isn't adding much value and I'd leave it out based on less being
more.

  convert_base_to_cs() was added by commit 6b2e29977518 ("timekeeping:
  Provide infrastructure for converting to/from a base clock").

> 
> Testing hints (ethX is PF netdev):
> phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
> phc2sys[1769.256]: CLOCK_REALTIME phc offset -5 s0 freq      -0 delay    0
> 
> Fixes: d4bea547ebb57 ("ice/ptp: Remove convert_art_to_tsc()")

My understanding is that the patch cited above (d4bea547ebb57) introduced
the bug being addressed. And that it did so by incorrectly using the
infrastructure added by the patch cited below (6b2e29977518e).

Thus, as the aim is to highlight which commit introduced the bug, I think
that only the fixes tag above should be present (and the one below should
be removed).

> Fixes" 6b2e29977518e ("timekeeping: Provide infrastructure for converting to/from a base clock")

Not strictly relevant if this tag is removed (see above)
but the correct syntax is Fixes: ... (not Fixes" ...).

> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

The code change itself looks correct to me.

...
