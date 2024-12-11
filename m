Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27A9ECE67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Dec 2024 15:17:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F26A881D4F;
	Wed, 11 Dec 2024 14:17:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FcILjq_wVNnV; Wed, 11 Dec 2024 14:17:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF30F81DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733926623;
	bh=TNxKTIDITpGiQBM+gnXUeG0YdbWOeYS+AZgYrOtb/Pw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y3l3fssxNpDFZ19oJMVMfiinkcy7tHkaZygFsHQ7ndHpSCVRcfYZ8F5bevuV8Lr//
	 B/Voad1ZzRGWhR+KJ0lPZ4EFerZbvvDAOsI0otHoGqU7nwATQSohlz0XnRUBcWSC/9
	 nGRHJzm8jrx4LT9R7sbXWvuChCHXJqD3kjRHy7emTJu2kANX+IQa+4HeCU5drQTbRx
	 RghGDzVLyZRwfSw6P5tY86bDh4RKkuQSeKNvFrhqt30LnGtBGUfTwJ68MVmkji7DFV
	 HuXv6EujQ5MgBfOp5E2d+n5wZPWMgsgMDlJvL639SgF+JPgqwQqiInbzCMT/cz52ky
	 HhGHKAAaiy8EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF30F81DD8;
	Wed, 11 Dec 2024 14:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C643E6F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 14:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6A44404DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 14:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qarVaHK5gqgG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Dec 2024 14:17:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F88A404BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F88A404BF
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F88A404BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 14:16:59 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tLNW8-0006dw-Dt; Wed, 11 Dec 2024 15:16:44 +0100
Date: Wed, 11 Dec 2024 15:16:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 andrew+netdev@lunn.ch, horms@kernel.org, jiri@resnulli.us,
 stephen@networkplumber.org, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Message-ID: <d5d1ce3d-2233-4899-875e-28d7ee2becb8@lunn.ch>
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
 <20241209153600.27bd07e1@kernel.org>
 <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=TNxKTIDITpGiQBM+gnXUeG0YdbWOeYS+AZgYrOtb/Pw=; b=3vbznPGcCmm1YN4mxUPIQ9KWTR
 dXk0q+4ks7toOjJHw/Do0envUl09PT+5fELPk6Qy7RmP4MtlJRoz14ioA1x/dx01mkHsqTk8Oxaea
 S/ntIeN9NOchNdqxLJaYmvPUj35UWvyA+9MLFhp03+E/lE6+pr9D0xojv7opKredBURM=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=3vbznPGc
Subject: Re: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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

> The E810 Ethernet controller firmware provides a certain level of security,
> which includes a mechanism to prevent firmware downgrades (to past, less
> secure versions).

Is there anything Ethernet specific here? I assume the same API could
be used for GPU firmware, ATA controller firmware, mice firmware?

Maybe you should pull this discussion up to a higher level, covering
all drivers, not just netdev.

	Andrew
