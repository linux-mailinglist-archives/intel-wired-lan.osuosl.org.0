Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63267754BAB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jul 2023 21:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB65D81DD8;
	Sat, 15 Jul 2023 19:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB65D81DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689448347;
	bh=uolC4NMExAqi64rpdmdZUO/AMKq7qVrDvDSgX7NcltU=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=UMO1IhkfFeAA66cLvLZtFBC50KInPQStjVtfmHz7gsOostwQ+wESDli/HECly622X
	 mMHgXn7NmIfWqsJvRKZOvf7D7pKUORn10OM+VJ8j0amuaMGDegPe8PngrfYZpTtOSn
	 El++8N/BoqC70IkWm9QF22MUk38uKaY4W7qtidRihMWkRsrzR5nhH2ZXVFcVTmt/X1
	 IlEQGBYVQE/GXmLNoX2RyyCpg/hQWhTN12c62f6a8uMM1nrK4qcy+LS0D/GSliuQh6
	 FJJ+ruKFe10oPxwee6fGyCWE4O3VpsEgXZewBd6UzW6LWOKEuNgSWtitYOyVGNi0fy
	 uDA3Y8KtJS3aQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSklWEyVAj7E; Sat, 15 Jul 2023 19:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93E0C81BC0;
	Sat, 15 Jul 2023 19:12:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93E0C81BC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 539C11BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 19:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B67840423
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 19:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B67840423
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GmJvDICnnh_H for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jul 2023 19:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EABE400E5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3EABE400E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 19:12:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 64D4660A0A;
 Sat, 15 Jul 2023 19:12:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BBC2C433C7;
 Sat, 15 Jul 2023 19:12:18 +0000 (UTC)
Date: Sat, 15 Jul 2023 14:12:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230715191216.GA364070@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874jm6nsd0.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689448338;
 bh=fvmfkQe7xASbExr7Qwq+ClgfzOJeaaWctwssh0Qdv+8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=im7jN0iZ/HRLgRjG+EeJrLdmJvNlRgFDMRvOqZAU0ZPt6OOkF4uZb4DgQCQMr89Ia
 jB06hdxpZ3qR7hA/h/jw/LqAkB2TEeV5+NqmOWRW0VCJjLwMR7rwuojB2+uyFR3Siz
 3AnYrkBRpLPrKH981T/0y/gxKbPsAvmZSfhZXKJ+RKH0PDlrEMCcyH/1UTAr0/0vAI
 MmTaLHSf5XA6AJXtbqZkuSMjdASy9zOAQWMSiL1hXI3fwjpRzkwF83UOmII4+E/Ud+
 OHzMYrrwIrXfyeYD6XqUw1pwrVroR5yLqRuhFuIljO3Znbq3QW8zFExDvZU05YwBKA
 AWNtBdeJlqA7w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=im7jN0iZ
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Ignore AER reset when device
 is suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 14, 2023 at 01:35:55PM -0700, Vinicius Costa Gomes wrote:
> Bjorn Helgaas <helgaas@kernel.org> writes:
> > On Fri, Jul 14, 2023 at 01:05:41PM +0800, Kai-Heng Feng wrote:
> >> When a system that connects to a Thunderbolt dock equipped with I225,
> >> like HP Thunderbolt Dock G4, I225 stops working after S3 resume:
> >> ...
> >
> >> The issue is that the PTM requests are sending before driver resumes the
> >> device. Since the issue can also be observed on Windows, it's quite
> >> likely a firmware/hardware limitation.
> >
> > Does this mean we didn't disable PTM correctly on suspend?  Or is the
> > device defective and sending PTM requests even though PTM is disabled?
> 
> The way I understand the hardware bug, the device is defective, as you
> said, the device sends PTM messages when "busmastering" is disabled.

Bus Master Enable controls the ability of a Function to issue Memory
and I/O Read/Write Requests (PCIe r6.0, sec 7.5.1.1.3).  PTM uses
Messages, and I don't think they should be affected by Bus Master
Enable.

I also don't understand the I225 connection.  We have these
Uncorrected Non-Fatal errors:

> >> [  606.527931] pcieport 0000:00:1d.0: AER: Multiple Uncorrected (Non-Fatal) error received: 0000:00:1d.0
> >> [  606.528064] pcieport 0000:00:1d.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> >> [  606.528068] pcieport 0000:00:1d.0:   device [8086:7ab0] error status/mask=00100000/00004000
> >> [  606.528072] pcieport 0000:00:1d.0:    [20] UnsupReq               (First)
> >> [  606.528075] pcieport 0000:00:1d.0: AER:   TLP Header: 34000000 0a000052 00000000 00000000
> >> [  606.528079] pcieport 0000:00:1d.0: AER:   Error of this Agent is reported first
> >> [  606.528098] pcieport 0000:04:01.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> >> [  606.528101] pcieport 0000:04:01.0:   device [8086:1136] error status/mask=00300000/00000000
> >> [  606.528105] pcieport 0000:04:01.0:    [20] UnsupReq               (First)
> >> [  606.528107] pcieport 0000:04:01.0:    [21] ACSViol
> >> [  606.528110] pcieport 0000:04:01.0: AER:   TLP Header: 34000000 04000052 00000000 00000000

They are clearly Unsupported Request errors caused by PTM Requests
(decoding at https://bugzilla.kernel.org/show_bug.cgi?id=216850#c9),
but they were logged by 00:1d.0 and 04:01.0.

The hierarchy is this:

  00:1d.0 Root Port to [bus 03-6c]
  03:00.0 Switch Upstream Port to [bus 04-6c]
  04:01.0 Switch Downstream Port to [bus 06-38]
  06:00.0 Switch Upstream Port to [bus 07-38]
  07:04.0 Switch Downstream Port to [bus 38]
  38:00.0 igc I225 NIC

If I225 sent a PTM request when it shouldn't have, i.e., when 07:04.0
didn't have PTM enabled, the error would have been logged by 07:04.0.

The fact that the errors were logged by 00:1d.0 and 04:01.0 means that
they were caused by PTM requests from 03:00.0 and 06:00.0.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
