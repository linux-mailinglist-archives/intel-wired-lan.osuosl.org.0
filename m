Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 198C8AA405
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2019 15:13:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC6CD220C4;
	Thu,  5 Sep 2019 13:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuDwLj-KWAy3; Thu,  5 Sep 2019 13:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5A73623453;
	Thu,  5 Sep 2019 13:13:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3AAC1BF681
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 13:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F44D87C8E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 13:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6M6+O9YPzEqX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2019 13:13:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFC6387C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 13:13:24 +0000 (UTC)
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1i5rZf-0007Uz-LW; Thu, 05 Sep 2019 15:13:19 +0200
Received: from [2a02:120b:2c12:c120:71a0:62dd:894c:fd0e] (helo=pc-66.home)
 by sslproxy05.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1i5rZf-000NOu-DN; Thu, 05 Sep 2019 15:13:19 +0200
To: Kevin Laatz <kevin.laatz@intel.com>, netdev@vger.kernel.org,
 ast@kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jonathan.lemon@gmail.com
References: <20190905011217.3567-1-kevin.laatz@intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <8f705b0a-e0e8-df0f-e5ed-e94dc809fb5c@iogearbox.net>
Date: Thu, 5 Sep 2019 15:13:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190905011217.3567-1-kevin.laatz@intel.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25563/Thu Sep  5 10:24:28 2019)
Subject: Re: [Intel-wired-lan] [PATCH bpf-next] ixgbe: fix xdp handle
 calculations
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/5/19 3:12 AM, Kevin Laatz wrote:
> Currently, we don't add headroom to the handle in ixgbe_zca_free,
> ixgbe_alloc_buffer_slow_zc and ixgbe_alloc_buffer_zc. The addition of the
> headroom to the handle was removed in
> commit d8c3061e5edd ("ixgbe: modify driver for handling offsets"), which
> will break things when headroom isvnon-zero. This patch fixes this and uses
> xsk_umem_adjust_offset to add it appropritely based on the mode being run.
> 
> Fixes: d8c3061e5edd ("ixgbe: modify driver for handling offsets")
> Reported-by: Bjorn Topel <bjorn.topel@intel.com>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>

Applied, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
