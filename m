Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3588D64F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 16:54:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB2C0423A4;
	Fri, 31 May 2024 14:54:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GEDSC5bUbDJk; Fri, 31 May 2024 14:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A82741A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717167285;
	bh=AasHPWKDYc9EJ7GjRR3I2zHe/catfocahjruK5Sr8Ao=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PWbkddhd55zmpedAyypKIrvSYh+4B0jZtkzDCok1hqIXHJ+KTtk3wJdZjuARBgume
	 Vrcxw+4hw4BTYUMTCpMgDyL754qay8cGqqpRM0OOB/EYcxmS4y5GfFNAz2uvOafQoj
	 LIhe7NZ0CiiMJBkQHGwzqdhx66VzeoVJDNQE+jZTYFUlPNWHxfJNGg4+KQE99dIhmo
	 PscEuItJbERyC/C6CgUpZhtgiOsREIgP7km53FJACiIy4AU9wc25twco7B2G1KpGJJ
	 BM5szcVoEdg6FbjiOZj9eC4GFQMV9+CDIuaup4lMdLx4jNJKiRcmj6C99Ks/gnf1iU
	 8vKcyerpTy8Ng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A82741A69;
	Fri, 31 May 2024 14:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9420F1D53A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AB8782207
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RiffA5ZQS49M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 14:54:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 183D0821F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 183D0821F8
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 183D0821F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:54:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 194BCCE1CCA;
 Fri, 31 May 2024 14:54:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5487FC116B1;
 Fri, 31 May 2024 14:54:35 +0000 (UTC)
Date: Fri, 31 May 2024 15:54:33 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240531145433.GK123401@kernel.org>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-2-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527151023.3634-2-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717167276;
 bh=Av7R+ie+lKmeY0v/wpCObfbqVXSTaAaZUt6YnpKNQrI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y8I9dJwicdMSl+JcqW9rbcpOqwrAYuY8YAJ/y7hO9Ong+7Xf24/IpVZO7heXZepVD
 l35KNOFd026BpswlpR+zxR/LrIA406TRRCVIKLnJm/MrldL5b9DwExoMwqrMOxllXO
 ihs3BS6kI3OhhG1xDW5C94nigcDpDvjpGRQlMUwP0rzokcy6w8dBgIozgJpdBBe5Y+
 5TzzBnH6XbhOUTjAqvNKK6tJNTQpnXYynyXf1ixMhKH4p403dOT3z59hhDnVwtMA8P
 sMTMzvPERZ0/PnDIfkCfaF0Va0KctsWcL0ZMGXUur+aS+m+zGxhzXodLNHybpqVock
 JhSe8UeC/tuCg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Y8I9dJwi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 1/7] ixgbe: Add support
 for E610 FW Admin Command Interface
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
Cc: Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 05:10:17PM +0200, Piotr Kwapulinski wrote:
> Add low level support for Admin Command Interface (ACI). ACI is the
> Firmware interface used by a driver to communicate with E610 adapter. Add
> the following ACI features:
> - data structures, macros, register definitions
> - commands handling
> - events handling
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

