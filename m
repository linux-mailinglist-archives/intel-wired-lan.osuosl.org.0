Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAD485BF03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 15:45:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB6E8414B8;
	Tue, 20 Feb 2024 14:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZsETIf_huXa; Tue, 20 Feb 2024 14:45:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99C23414BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708440326;
	bh=zfldrZzT5rYLjsaVPisGJB5OtCgQ4dz4zxtJzhM67DU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WBXq97CJa0B6lhZ7dtoOs3Caipfiiia6qZCJwFa6RILDAzoF1fUpbzWaMROlmzxtF
	 8I1VuAuydO/kzPGJk/8U8KLIE6WSaPCG0JsY1JGid/6m5zX73C/nnAglMCVqQPud9Q
	 5ZSuqY9OLRVC3bxly8Q764Jar8iermtmSCiNpuFiNmeDXE4ssSyhmAWL3wBHVzi9E0
	 XubjqpGD2H2F5DAAHEQ6CM+hpqwLVW7rUifQ62yu0zMCaSEXjGb/nQ8YC+pmqomvHA
	 xR+EMrGOkp9UKE/QUr3E9VOd54XuwlFu/EPi+Mk2aK7jpmi2/k3y0ApQson1GAYFNq
	 PVDGDNL1/51Zg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99C23414BE;
	Tue, 20 Feb 2024 14:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52C581BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EC9860819
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id prXevPYVE1xz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 14:45:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 99A8F60807
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99A8F60807
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99A8F60807
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 14:45:23 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rcRNA-008I4I-2Y; Tue, 20 Feb 2024 15:45:28 +0100
Date: Tue, 20 Feb 2024 15:45:28 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Simon Horman <horms@kernel.org>
Message-ID: <a52361ef-66ab-41bd-b245-ccd26fcbd957@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-3-71f13b7c3e60@lunn.ch>
 <20240220124405.GB40273@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220124405.GB40273@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=zfldrZzT5rYLjsaVPisGJB5OtCgQ4dz4zxtJzhM67DU=; b=Z/GpseWUybd0CL/+h9GRJnkeHV
 bPjCC1+KlPq/kicfwPpx92uuiaaam8wCG28OzXBtIKSGUkuxr/tGEajFDSk/abmgCx+fIFDq6chQ0
 BzsHOQ/r/t8FITaNIta+aHvW2EKnnvlfmNOqaIKhx1QHz2lzUng4v0oFd2n85Pfk/RyM=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Z/GpseWU
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/9] net: qlogic: qede:
 Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > +	unsupp = linkmode_andnot(tmp, edata->advertised, supported);
> 
> nit: Given the types involved, I might have written this as:
> 
> 	unsupp = !!linkmode_andnot(tmp, edata->advertised, supported);

linkmode_andnot() calls bitmap_andnot():

static inline bool bitmap_andnot(unsigned long *dst, const unsigned long *src1,
			const unsigned long *src2, unsigned int nbits)

It already returns a bool, so there is no need to force an int to bool
conversion using !!.

	Andrew
