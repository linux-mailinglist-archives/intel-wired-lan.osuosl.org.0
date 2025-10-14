Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B0CBDBD16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:35:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E606F41268;
	Tue, 14 Oct 2025 23:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vu_xadKlPou2; Tue, 14 Oct 2025 23:35:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6748F4126F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760484919;
	bh=HCk0Oh4t9aGXWl2LWbP437LJVt1RFvHxvovvsEDgKPY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JnZHj81uLQ3BiIJpgvncJR8mX0lq8z8JjgVTuleBUJu9C8YLNCyW3zmFuLhMhCKnt
	 ejwE7t9aRE4BoxP0ienQv0KD7AwURF+9ibeCOQPR8WCGVG3Y36iSjX0rmmXFXE3gn6
	 TJ8XEckDHgZE6J6q87Vp/CbnjaC11CmyP9J3f8pxfO9OmhbiMfpv47nFRHsCKVqMIt
	 IJgF+pc2Qy7uESMuYGTbPvs2tCOU/bSjU6aqDPtAcBY6YNzU3ZTb7vyJ0c+NgQC8Nr
	 HJaE54zbrOTtxikPyOz69Fj5ug4LGrHGdiRMywW2ZvlpGM6Un39VR9TTfwZhHt4Zfo
	 x8SHrWITdQW0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6748F4126F;
	Tue, 14 Oct 2025 23:35:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C18811C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 13:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E46841676
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 13:22:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cwPXVdbYyvVR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 13:22:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=23.88.97.239;
 helo=bkemail.birger-koblitz.de; envelope-from=mail@birger-koblitz.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFAE841673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFAE841673
Received: from bkemail.birger-koblitz.de (bkemail.birger-koblitz.de
 [23.88.97.239])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFAE841673
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 13:22:15 +0000 (UTC)
Received: by bkemail.birger-koblitz.de (Postfix, from userid 109)
 id 69E054853C; Tue, 14 Oct 2025 13:22:12 +0000 (UTC)
Received: from [IPV6:2a00:6020:47a3:e800:96c2:85f:dd97:a67d] (unknown
 [IPv6:2a00:6020:47a3:e800:96c2:85f:dd97:a67d])
 by bkemail.birger-koblitz.de (Postfix) with ESMTPSA id 6A2CE48535;
 Tue, 14 Oct 2025 13:22:11 +0000 (UTC)
Message-ID: <4fcabfb2-9793-49be-bf60-bb8ac36f9e34@birger-koblitz.de>
Date: Tue, 14 Oct 2025 15:22:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Andrew Lunn <andrew@lunn.ch>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
 <0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch>
 <77cfe8ef-57d4-4dee-b89d-3f5504653413@molgen.mpg.de>
From: Birger Koblitz <mail@birger-koblitz.de>
Content-Language: en-US
In-Reply-To: <77cfe8ef-57d4-4dee-b89d-3f5504653413@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 14 Oct 2025 23:35:13 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=birger-koblitz.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Add 10G-BX support
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



On 14/10/2025 15:07, Paul Menzel wrote:
> Unfortunately I do not see the original patch on the mailing list *intel-wired-lan*, and lore.kernel.org also does not have it [1].
>
I have several emails from intel-wired-lan stating that "Your message to Intel-wired-lan awaits moderator approval" as I am not myself on that list.

Birger
