Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9EE7F95F1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Nov 2023 23:55:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3980660C12;
	Sun, 26 Nov 2023 22:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3980660C12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701039311;
	bh=tgl5PYJSKIStuyjhoxlwqemVXaABeKi964Ft4aeXnQU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kgkgIKKxaFYAQOvz82cW81HD5bWiNs982vd0lYjtEweTGZuJxVLkQqEmrRJFfZ0J+
	 khFeMPogAPXiZmutoAtpVa+KLLqIWUAWzrlaCO6x8k+y7MUzcQPZfd707uFpLPLpUX
	 FGt37rc9qVzeSX3Kgnqb3kUJ3iqa5ZhHh3fXX5djmzy8bI3QzXu3bFEN8MNxGdtPvj
	 IHe7CO5JzyuzdqrE6CNzebPyFfaNxkU3d8nn4gaGA77dvQaloXJWws9x518FRBHfWV
	 yfGskjj9FUCXrrWdR39F1I4uFMvTUYK6HUzjfvSJLwAleSry5FirFCA4S9ZzsIVVf+
	 uUlENNqohSilQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OsRQ4x7iqnPA; Sun, 26 Nov 2023 22:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DFAD60C06;
	Sun, 26 Nov 2023 22:55:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DFAD60C06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE2981BF215
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 22:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4F944031C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 22:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4F944031C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id id9fTUtQJPfz for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Nov 2023 22:55:04 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DCB4402D2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 22:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DCB4402D2
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BF4C3CE0E74;
 Sun, 26 Nov 2023 22:54:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68C52C433C7;
 Sun, 26 Nov 2023 22:54:58 +0000 (UTC)
Date: Sun, 26 Nov 2023 14:54:57 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20231126145457.400726e4@kernel.org>
In-Reply-To: <20231124154732.1623518-2-aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-2-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701039299;
 bh=ikD1IcWn7pY0Kg0l7nVoix086nkdC/HUPPp5zrf1b4o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qJJu32y9fKFumvgnuECyyu2TS9UMK5Ap6sAmKlCfNCIG1Ao17kQtALBfEDRHWruyO
 DySl8NfRpcr0kz1FfH4ylkBz9WhCBgh1+yrcz1LlzRXqi0F9fbuqKnm0Y0EkefUhBv
 +BlB1H8xSLp75zBwmJO7XbcyVO3eU+mrChAMiPaESALpb0qMwVpHK4if+s/SYfXFhh
 z5cka8YmKQ06Ep6beWWA8c//zo/sCaoGMbvkO8tsW5erj/DaDz8pZtydLkcg8wYb2O
 CuVWAF09Fi9PHhwx4TTHQM/mIoGXhKf0+nUBa0QWRwhdql1pBW2d92lF+pfo0q6CYZ
 pehRSiZD2QmSQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qJJu32y9
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/14] page_pool: make
 sure frag API fields don't span between cachelines
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 24 Nov 2023 16:47:19 +0100 Alexander Lobakin wrote:
> -	long frag_users;
> +	long frag_users __aligned(4 * sizeof(long));

A comment for the somewhat unusual alignment size would be good.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
