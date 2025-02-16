Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F31A373EF
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2025 12:18:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF8D683A38;
	Sun, 16 Feb 2025 11:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AED9vo4XUDA5; Sun, 16 Feb 2025 11:18:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E02A88213A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739704692;
	bh=iim7A/hOhSBjIB0QvkijcU9z5HrlkudiEtTS1iUI018=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Y6ylBawfo26UMJmxuC4v6c9h2bO6vX+p9AxwYh/YKolMjNpaSXX39MDrhp2L2IVA
	 mjHLTZUoIOeAAKSQP/S4OtLp1xh2qp+mgKt+/8r1Orl42KYweXJZSd+3SiTjYlvuQr
	 fQm1zRAuLSmApBs8e8DW00ojuINv2BHeQUEouoj71xEB7XXx2jDonP7KkTJFv+VEA4
	 eBLrqif/+5sE5Hp/+nA5Y1fDeXDDs+fZxewtbAZyqvWx2rBOL8B2Z1GJKd9Wqibtkp
	 iykHIAqVKNjHKs0jYVtR8iLmXVXfSFyBH+HmLuep4wE4YLNHOBUbng7ShpRy0W5yHA
	 hx40JDGSdAEMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E02A88213A;
	Sun, 16 Feb 2025 11:18:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5013DE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 11:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6A5F40F9B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 11:18:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qrx6bRqKoQ5d for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2025 11:18:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7065340F9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7065340F9A
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7065340F9A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 11:18:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id AC6A7A409DB;
 Sun, 16 Feb 2025 11:16:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B1FC4CEDD;
 Sun, 16 Feb 2025 11:18:05 +0000 (UTC)
Date: Sun, 16 Feb 2025 13:18:00 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tatyana Nikolova <tatyana.e.nikolova@intel.com>, jgg@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20250216111800.GV17863@unreal>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
 <7e12c97d-8733-44df-b80e-2956c0e59dae@intel.com>
 <20250210110935.GE17863@unreal>
 <f253c4b6-e4ee-44a3-953d-44f20ac5e79d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f253c4b6-e4ee-44a3-953d-44f20ac5e79d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739704686;
 bh=7nH4Wr68d+twhepsFkEUe2orfwSb8C//jA3dTUoGGCE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kQ4e+pxrQj8KTZuBSDxk3NxlQsH6xPHxgZcZY3oM/kJLo8IEWhtLcclZKdw7qcEfd
 zpL8EOaBjfpXGikWyKskUgappitn5EI2YjjOwKDId80Ui1/ZrWmacbCldvXyzfTdjO
 7EMwM7q/ZWKEdSck220fovQzIHFh4+DNZusEyJAQaqjOj9oCVjSBJf88TfSTt1LCib
 9h5ZjF87V+f565R19saocZm2ZJFfneeCK3n7wEVgqtqn/XjKPpYuPUtIWnV2qtlNNJ
 SnMz8KJSgNyZUnnfm6U/eJpmPnRjUOGrpmrWxV/q8iDo/D4sT3v++5f7ncSOoB2e+a
 Ii9Dl4XEj43dA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kQ4e+pxr
Subject: Re: [Intel-wired-lan] [iwl-next,
 rdma v3 00/24] Add RDMA support for Intel IPU E2000 (GEN3)
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

On Thu, Feb 13, 2025 at 05:12:46PM +0100, Przemek Kitszel wrote:
> On 2/10/25 12:09, Leon Romanovsky wrote:
> > On Mon, Feb 10, 2025 at 11:41:31AM +0100, Przemek Kitszel wrote:
> > > On 2/7/25 20:49, Tatyana Nikolova wrote:
> > > > This patch series is based on 6.14-rc1 and includes both netdev and RDMA
> > > > patches for ease of review. It can also be viewed here [1]. A shared pull
> > > > request will be sent for patches 1-7 following review.
> > > > 
> > > 
> > > [...]
> > > TLDR of my mail: could be take 1st patch prior to the rest?
> > > 
> > > > V2 RFC series is at https://lwn.net/Articles/987141/.
> > > 
> > > code there was mostly the same, and noone commented, I bet due
> > > to the sheer size of the series
> > 
> > It was very optimistic to expect for a review during holiday season
> > and merge window, especially series of 25 patches which are marked
> > as RFC.
> 
> that's true
> 
> so, given most of the patches will go via your tree, how do you want
> to split us the existing ones into series?
> 
> a) 1st, idpf, rdma
> b) 1st, rest
> c) all together
> 
> In any case I will do a review too of course

There is a need to get Acks for the netdev part and because that part is
going to be before RDMA patches, the fist option is proffered one.

If you plan to merge everything in this cycle, netdev and RDMA parts need
to be merged into some shared branch based on clean -rcX.

I can do it for you as well, but first need to get Acks for netdev part.

Thanks

> 
> > 
> > Thanks
> 
> 
