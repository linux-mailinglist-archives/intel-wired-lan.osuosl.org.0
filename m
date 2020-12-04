Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A84442CF2F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 18:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D93A87899;
	Fri,  4 Dec 2020 17:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPSslCQHv1hW; Fri,  4 Dec 2020 17:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5145873A1;
	Fri,  4 Dec 2020 17:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6538E1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60DF2872B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pM1XM0xE0XXS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 17:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2DC4285C94
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:20:14 +0000 (UTC)
Date: Fri, 4 Dec 2020 09:20:12 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607102413;
 bh=pzcWxuqeocDMX8WT2QK/0XUN9oXEedWRCY80VJcpX+4=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=kRt5IDOYT9WJVdTCrLiiAFimHg7gsj3CIdC4psJn3zPcNonotq/DoCZKJHpirgbsu
 tQlOjKCIq8VjFjqOeJm+Mti2qMlaEjKrOlYy9kviNtmlH7SkXsXbAHNFOyOs4hZNKr
 OaNnSVhpMOhc/VJ4zY6aZBxcKGhacbPZmuPQkN9zTr0g2DkWo294GTbzeuZjJuIgEu
 sn4kBMe1dYA3bH1TXNIt9E8qJE/7wUCw3dIralsQELTQxhvY/8wEnE4ZvefQvYhqtt
 y2VrFXlC0xeCICEZRu7xqemwlxmCe19RTCCy3AJRVwp6TxPYE/jZ+i3cOKlF1NhNjj
 qLTr4xVZnWfdA==
From: Jakub Kicinski <kuba@kernel.org>
To: alardam@gmail.com
Message-ID: <20201204092012.720b53bf@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201204102901.109709-1-marekx.majtyka@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 0/5] New netdev feature flags
 for XDP
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org, toke@redhat.com,
 ast@kernel.org, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  4 Dec 2020 11:28:56 +0100 alardam@gmail.com wrote:
>  * Extend ethtool netlink interface in order to get access to the XDP
>    bitmap (XDP_PROPERTIES_GET). [Toke]

That's a good direction, but I don't see why XDP caps belong in ethtool
at all? We use rtnetlink to manage the progs...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
