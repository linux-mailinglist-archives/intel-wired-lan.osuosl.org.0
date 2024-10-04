Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCE298FB8E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 02:32:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F366C6061C;
	Fri,  4 Oct 2024 00:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vHKto9EqLI8H; Fri,  4 Oct 2024 00:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 501D660640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728001933;
	bh=j9oGV6Cw5iu98mINIxSNPzzHTiULchRXBmFSgXmv8L0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vH45Qzoa1+SShXuoRwy4V41SO7C4tSitwCUoyvyFLzIQJmjq8o/L3wcIRuJTDA+oc
	 vWvUlOIS3hv1Gl40mxx89wFTwtSkd4mbX+igs0NCUSYweqNGBVoAOblP6eLhUn2ghk
	 h4Oa3uYN5DZZmLubkYCo8Jws0GJwI1nKpz1UIxvxnUuMPyOexaPufwVx6XAIsQqwSJ
	 dvFV9QSbC8kZrsj8BsY8wMvX3xiCj+ht2xZjepeeUWtJ6WUJbTYTooxCRd4EtSQqG9
	 d9UEutfMVH4nlL4FyQina81TmH2ifnUoDESFilii3QIjQ0T3RLz92ve1RlJQUtJxMP
	 dWKdPzjo+YkKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 501D660640;
	Fri,  4 Oct 2024 00:32:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50C981BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 00:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B1A440B24
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 00:32:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DsuKXE7zWV67 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 00:32:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77887407A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77887407A6
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77887407A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 00:32:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1DB7F5C5C9B;
 Fri,  4 Oct 2024 00:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B001C4CEC5;
 Fri,  4 Oct 2024 00:32:09 +0000 (UTC)
Date: Thu, 3 Oct 2024 17:32:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20241003173208.553f0cfc@kernel.org>
In-Reply-To: <20240930162422.288995-2-jdamato@fastly.com>
References: <20240930162422.288995-1-jdamato@fastly.com>
 <20240930162422.288995-2-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728001930;
 bh=0euF5hnFLXpDZPkAgzy4pr7Yli5RFu5Rd+Pthg74fUY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HZxU6//0Q6wgdA8SCfIYM4w3FUtPHKOnF7Q6lO49wvmA7FnPexajJiDruNaBdCNLl
 Zu6U0fB6vEAuOrw4oVNtid9tmYJk0vMJOCivFj6GYcT64r1YS4yAA0RKJ9t4dyuzmv
 CVzML6RdjaTAy2nqtDtMdPPDb1Ex4z/gqaWUNZzUx6cJwxRmi4DIl/shBM1dyYhYkV
 adJx4gEL5RUYJs6lFHAHCBw5itQWa+aMeEpaaTKHeaJSmfEReIoxqUWI34aRlSBIZS
 sGMFyfyxBE9+E60Ea37u2LJdOgeDpTkQ953NKBAf7bs+DmGqPrI8VJNpdhXzZFpeW7
 DQJ6lGXhFbpMQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HZxU6//0
Subject: Re: [Intel-wired-lan] [net-next v2 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 30 Sep 2024 16:24:22 +0000 Joe Damato wrote:
> The sizeof(struct napi_struct) can change. Don't hardcode the size to
> 400 bytes and instead use "sizeof(struct napi_struct)".
> 
> While fixing this, also move other calculations into compile time
> defines.

Anticipating v3 with smaller diff based on Olek's suggestion so:
pw-bot: cr
