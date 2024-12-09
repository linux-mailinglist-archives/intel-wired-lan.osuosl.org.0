Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9889EA2E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 00:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C46154050C;
	Mon,  9 Dec 2024 23:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sO0Emu7jitS4; Mon,  9 Dec 2024 23:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D68CA404CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733787370;
	bh=SPgcs3c2zZOgT/nph7nbuEa+vzbLLg+T6ytzf28KWA8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=drptu6+wm8o1vJ3uyNyTrv177s/HgqdSBvV6sxoWsv/JmAKyyGEgzVE9H57EHU/m9
	 9atqwDK2rR0RW1oE8Ze86S6v1MCmF12vGnAwGjTbzYXbE1k/7SXTfGpsjVncZaPuOy
	 LCzb5b6rcHugV9qlxx77k4q5R52+NBt89Pp4b9orZGzSO6s5wMhA7wJQNxb9NBmVYX
	 l3QRbQaVMYAM4yeCpf2/8LJJnaXBulYAC+2VvftoEvg38j+aOiuPJpi15kqNa/IMof
	 18nWKuPngi0iU90qGVXZ5ME6PN/Rfh4G3pK2+gz4R7FTe0cIFksd/M7hK/W+vcb3v+
	 ItIqExn86yimA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D68CA404CE;
	Mon,  9 Dec 2024 23:36:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 82259E11
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 23:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C37B6070E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 23:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nfvZyWdB0cSs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 23:36:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 59314606CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59314606CC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59314606CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 23:36:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9C34A5C0632;
 Mon,  9 Dec 2024 23:35:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63BAEC4CED1;
 Mon,  9 Dec 2024 23:36:01 +0000 (UTC)
Date: Mon, 9 Dec 2024 15:36:00 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: netdev@vger.kernel.org, andrew+netdev@lunn.ch, horms@kernel.org,
 jiri@resnulli.us, stephen@networkplumber.org, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20241209153600.27bd07e1@kernel.org>
In-Reply-To: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733787361;
 bh=NdPKOSPU4p+DVGjLP/RnkRHeQoLuuHuopki9InkJ7qE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YJQvz2ioCqHzoIFaOHTTjvfEWLx6aJ4P5iEqEkBIGoP5W0F+2ekCtELI9egY5b577
 EKefEQyM5oa7o6Ls1DVV6hfk7JEWlS57+k7HS8zOiCl32H0Uk6XOUugHXZ9lwxKlBm
 VT1xslZ29up9jpmRzs9n5tPkfUQ9Q3gsaba93PzsC+B9M/VsFTNnNH1JXxJ093nNxe
 u43DX5mKzTTEIaVDUC1y8USigc+wVjKj0bpVDzTaq0DweeH3w3gzhXQ19A/OyaDuxO
 sJ6XSsTB6QuwHI+ev/kWBiJSqFVlliFepG4xA8PZ4wFvjPYzqkogWBcU8rrDGOoVas
 i70pwnK0apYqQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YJQvz2io
Subject: Re: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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

On Mon,  9 Dec 2024 14:14:50 +0100 Martyna Szapar-Mudlaw wrote:
> Proposed design
> 
> New command, `devlink dev lock-firmware` (or `devlink dev guard-firmware`),
> will be added to devlink API. Implementation in devlink will be simple
> and generic, with no predefined operations, offering flexibility for drivers
> to define the firmware locking mechanism appropriate to the hardware's
> capabilities and security requirements. Running this command will allow
> ice driver to ensure firmware with lower security value downgrades are
> prevented.
> 
> Add also changes to Intel ice driver to display security values
> via devlink dev info command running and set minimum. Also implement
> lock-firmware devlink op callback in ice driver to update firmware
> minimum security revision value.

devlink doesn't have a suitable security model. I don't think we should
be adding hacks since we're not security experts and standards like SPDM
exist.

I understand that customers ask for this but "security" is not a
checkbox, the whole certificate and version management is necessary.
