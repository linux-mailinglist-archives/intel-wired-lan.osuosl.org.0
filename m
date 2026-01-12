Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D57F2D13B1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 16:33:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8952942A90;
	Mon, 12 Jan 2026 15:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N7-kYw-Jt5j1; Mon, 12 Jan 2026 15:33:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3E1942A97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768232011;
	bh=+tS+VPw2eHksooP1q/eKYTDOe/N7Ous7Lw3PFa80c8o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zeP1i4J9IFH6pKbiuU9sWfzg7y8uvlQycka39pMFYwF6ZDzZXtpF6oSXvn88Aukvn
	 u/+0yJiVjnsFsDF25EcdQQ9HuFJunQN0L/5D1yMBa+soSLWZZIFIl1H6f8XSeq1vU9
	 qYSt9a+e2+F/fZJM0Nec1FygX3oaAiNw4DxBp4fnL7f4meQuimqo2QCnZWOtLClUur
	 D9q/PuBwKByYDcM7qBna6SIbGfBcgG+dMkN02iBPRGSC/eStylswbSco8D8q7xPmuc
	 UScv5S+/pIjZ2ov63LKl5upYh8OoW08VkNVeraSNsaWFmx3D6+8L4owuLCe/PNhX1u
	 zoc3wZD498A6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3E1942A97;
	Mon, 12 Jan 2026 15:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D514412E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBB464007C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IGzLvEXMdG-Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 15:33:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 947BE40184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 947BE40184
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 947BE40184
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:33:28 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vfJv2-002Uy5-Bd; Mon, 12 Jan 2026 16:33:24 +0100
Date: Mon, 12 Jan 2026 16:33:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <29577cab-c96f-4799-99d7-c78cf61cfd61@lunn.ch>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-6-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112140108.1173835-6-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=+tS+VPw2eHksooP1q/eKYTDOe/N7Ous7Lw3PFa80c8o=; b=SHXh23RMSQbQZBvzoogHvuhzmb
 rgfazA1/obO6kDzaB3dO8Bi6Z6scSSmcVNiJHRtdNTgCvwaFNIU1EwZE+pZDe+D4RSoJQ2Ho0rzoJ
 AK498+YXIRKpZxfeiMyuL61blcDFDZC5sYu9AT6D59n50CRD3C0ohPZhuxqd+pOi+unY=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=SHXh23RM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/7] ixgbe: move EEE
 config validation out of ixgbe_set_eee()
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

> +	if (keee_stored.eee_enabled == keee_requested->eee_enabled)
> +		return -EALREADY;

I know this is just moving code around, but i don't know of any other
implementation of EEE which returns -EALREADY when no change has been
requested by the user. Maybe in a follow up patch you change this to 0?

	  Andrew
