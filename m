Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B0AA02666
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:23:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 746A880E45;
	Mon,  6 Jan 2025 13:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ta6nO7Nq0vz1; Mon,  6 Jan 2025 13:23:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF18181258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736169803;
	bh=VKAVtPUJz6rCprrESRURs9U5V3K3e6xAvsVXLL751F0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n2hw/38pLxyWyXlMMA2HAGyOEfQ7nq6v3j2eaFxkUa/Pu7NH8H+rErnsZgL8rfXYs
	 m9Q29QwOCCxjA0vSYiRAgKdF+DcPzn4iV5y9jrS2o7XGEhQSi6K8r1BPXjdewhLvPq
	 BhQ63K5g5A4PPvFSb5S6GQzEnNHqDYTnH3ZHVeLR8smaP5bIxN9ju9gnWxA8m+ofwx
	 dCvH7c/w6I8Z98nE9NMNLzRJa7Fvh8XkmwWqvVj8If7KEyH3W0qXxY6asZmDkxp8Q5
	 E8WtJdlRlTxe0nDvlKZL9YdWXz2hfOAiFKyaWlfyw3X3uu4Pu8z095vufXcBpqfuil
	 ztShSKZY52BfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF18181258;
	Mon,  6 Jan 2025 13:23:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4016E6B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FB9440B93
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gix-KeJP4y62 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:23:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4910E40B81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4910E40B81
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4910E40B81
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5A7245C55BF;
 Mon,  6 Jan 2025 13:22:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E805C4CED2;
 Mon,  6 Jan 2025 13:23:17 +0000 (UTC)
Date: Mon, 6 Jan 2025 13:23:16 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106132316.GL4068@kernel.org>
References: <20241226165215.105092-1-linux@treblig.org>
 <20241226165215.105092-3-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226165215.105092-3-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736169800;
 bh=S69efE5Z81qFKNYp8ibuLNFNkGNJBH86IsF5Hy4J4HY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cWEGa8ZMbz0UOCwn8yR59V2ebRmD7hqdSdZYfAq3RJ6B5/6Qqa2aS/2H42IWvF0hb
 E2umXalgS1cRU1xX9/pXIer5+5mmDFaCQAm+Iq63AqSzaXMoUjrVUxAPyM7Arx09xf
 T6+Fy+ulMvr4JjOXLps47c1WcX6GRbo83TW8ultIe7CoCQWbXeNT2WGNE2kifkLavC
 u6epOQXk+iX1a5tJc3xF79e54JNuJB1XcwfDc+o1cees24jhh2B82+SoIajQAWLFMO
 B5uK1yXlwV8mxtdSJypu8+eGuFGQOm+eB65ULPIPTv10lQXRJHdFd7RxVQr9K38z2Y
 Ns4xte5UyT4RQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cWEGa8ZM
Subject: Re: [Intel-wired-lan] [RFC net-next 2/3] igc: Remove unused
 igc_read/write_pci_cfg wrappers
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

On Thu, Dec 26, 2024 at 04:52:14PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> igc_read_pci_cfg() and igc_write_pci_cfg were added in 2018 as part of
> commit 146740f9abc4 ("igc: Add support for PF")
> but have remained unused.
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

