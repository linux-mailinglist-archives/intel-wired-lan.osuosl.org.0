Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96346A546A2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 10:41:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ADF480EB6;
	Thu,  6 Mar 2025 09:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ki8h8_hutZil; Thu,  6 Mar 2025 09:41:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66F0780EB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741254083;
	bh=xB1o5dqlFrSn0Uc9HFnuEIi6hariOq0J+Yu4U8AKWKs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dggNIN6ip/3NKEdTW2sqmqLuhQDghju4tJPb2RHjKba+aBGR1Hpkk0yvuePFg394Y
	 4TWEWTpPl/ZEASJbUsrEzO/pGQmkI13mt3wqAx3GESIdbC2WJL7OhhP5EhmHXV4ZtO
	 LZ7XudlEBaH1gvWvXgYNfeX65GHI/LVQsSPbjTWFyyy2Ozp+8KyOw0Z2JdmfZEvUJ6
	 IVNTeYnhS2JaTu3QKPd6KzxjNDuuXNmTbwq9eryfQah1/oapqwCIeQfsGfca2lSIwO
	 Q2kwT7+XakXfD6JbuG8hTjLnsa2ZBAKyrRSf99UHYyVOd0k2wfWewqKxgnxemqAnsc
	 DxS5KLuDbRfUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66F0780EB8;
	Thu,  6 Mar 2025 09:41:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 32C7C95F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16E0340575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:41:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6Yz7IcE9qMD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 09:41:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0A567404D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A567404D3
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A567404D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:41:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DA88CA431EA;
 Thu,  6 Mar 2025 09:35:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E45C4CEE0;
 Thu,  6 Mar 2025 09:41:16 +0000 (UTC)
Date: Thu, 6 Mar 2025 09:41:13 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Message-ID: <20250306093854.GQ3666230@kernel.org>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-13-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221115116.169158-13-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741254078;
 bh=nrzVgQGTRl5rsEbFS3DitQd0cgTpWwwFO4ICiZBmMWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qZIRR3b2MC/O4LBJ/ksJ0RAafGu4ZGA41T8Uq/NZOM+z6W3/RPM9Jebk/zXQw8q6B
 dKVHRc07Omvqjfag7QvBFJ1A3nOreKTczKBZF0+6CUP8bEHi5UnUinxF3z87om7cuS
 yPkW4/5HDrl65AKnKSigKvAFZsQaVtCkLHc32sDJMujT7PcYYBgwLFJyfhUZkuomwf
 Nzv6++nu6yVkdfR5woa0pd7N9Ea3SbnmHjsmltEFZ212tpzuG5tfR9Ku55gxdqKdo7
 wzqrYOQQxcm7/sK68M26b1bZW5Vb0gem8xH31of0xkKeIs3E1W0qPsWLQ/5Jw3b9iS
 Jn9Lrers1G0qw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qZIRR3b2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixgbe: add support
 for devlink reload
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

On Fri, Feb 21, 2025 at 12:51:13PM +0100, Jedrzej Jagielski wrote:
> The E610 adapters contain an embedded chip with firmware which can be
> updated using devlink flash. The firmware which runs on this chip is
> referred to as the Embedded Management Processor firmware (EMP
> firmware).
> 
> Activating the new firmware image currently requires that the system be
> rebooted. This is not ideal as rebooting the system can cause unwanted
> downtime.
> 
> The EMP firmware itself can be reloaded by issuing a special update
> to the device called an Embedded Management Processor reset (EMP
> reset). This reset causes the device to reset and reload the EMP
> firmware.
> 
> Implement support for devlink reload with the "fw_activate" flag. This
> allows user space to request the firmware be activated immediately.
> 
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

...

> diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
> index 41aedf4b8017..e5fef951c6f5 100644
> --- a/Documentation/networking/devlink/ixgbe.rst
> +++ b/Documentation/networking/devlink/ixgbe.rst
> @@ -88,3 +88,18 @@ combined flash image that contains the ``fw.mgmt``, ``fw.undi``, and
>         and device serial number. It is expected that this combination be used with an
>         image customized for the specific device.
>  
> +Reload
> +======
> +
> +The ``ixgbe`` driver supports activating new firmware after a flash update
> +using ``DEVLINK_CMD_RELOAD`` with the ``DEVLINK_RELOAD_ACTION_FW_ACTIVATE``
> +action.
> +
> +.. code:: shell
> +    $ devlink dev reload pci/0000:01:00.0 reload action fw_activate
> +The new firmware is activated by issuing a device specific Embedded
> +Management Processor reset which requests the device to reset and reload the
> +EMP firmware image.
> +
> +The driver does not currently support reloading the driver via
> +``DEVLINK_RELOAD_ACTION_DRIVER_REINIT``.

Hi Jedrzej, all,

This is not a proper review. And I didn't look into this, but make htmldocs
complains that:

 .../ixgbe.rst:98: ERROR: Error in "code" directive:
 maximum 1 argument(s) allowed, 9 supplied.
 
 .. code:: shell
     $ devlink dev reload pci/0000:01:00.0 reload action fw_activate

...
