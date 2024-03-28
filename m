Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73111890720
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 293448238C;
	Thu, 28 Mar 2024 17:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id woGK8ihrIHQ9; Thu, 28 Mar 2024 17:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E53082116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646673;
	bh=X5EaHlL0oSRRcCjvz+Z8eb1oa70SXsgAWlpToy0jw6c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=94RgLe7y0mcWLOeGeiXZtetFyf6jGE8xhXPS2vCVvaGiTibHhThhWs8N77pfSlwKf
	 hmDCty6ZWl+wgTsN1ulssQPZLhGCTPG+dBqmqT8tVh91SoLkhee+80inwIB0fNM8p7
	 lAhue8tB/oA9BqKQ0tgqqKkn7jTYKqiYd6+tmgtKPbeFb4CcacjeTP9VDeFV7QMXiJ
	 KA4geOizDHUIqnqkeY/FkywvCNlAN6kQ+OsCBW7pWoohFurlv8YWlzln7E0W16V1ls
	 VLIybau3PdvYJjA1A1ynAE5volFumv3FqqYT+9npG0r5MudYDtXZo4G50CTz7x16it
	 yMFA9Jd6vQqBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E53082116;
	Thu, 28 Mar 2024 17:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 552381BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41EB182116
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id On3g13WTRqKI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:24:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A48A3820FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A48A3820FE
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A48A3820FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C6E55617D5;
 Thu, 28 Mar 2024 17:24:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F12CC433C7;
 Thu, 28 Mar 2024 17:24:26 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:24:25 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172425.GE651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-6-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-6-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646669;
 bh=2siyeS6uzlQMyBU1hT15aszZzeb4J26W0sbBxAvcBso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EsQUQGBJqiyE5TBBV1xaMlo03QpVAjoKOs2v+yc9h3SArZNhlqDqOXHBukxqB1MXx
 mSnrkDZwp1EJRG/GjTmvIuuZFgvtgDPb9iU4m9v7fEXuBOeqXBL0UpY9f+Z60FbZiu
 Xx8jLPPfa1xXXjofs2s7fczcr9fEWhpQeSI329bsb1I7LJDipgT20fgmDesJxlTlZC
 BbWF9m789tpHEeAvD4v5nA6YVBxNju9Y0EGeyzE/JURIUvw6s7i1F7SCMtBjJenKeo
 sUh70/IgAKTKQ4w1h8tAR19+lwIYB8btXTAp3RwJpRc7u+AiLakViYUF3Hfq4PcIoU
 p50lOWz5kcoWw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EsQUQGBJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/7] i40e: Consolidate
 checks whether given VSI is main
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:31AM +0100, Ivan Vecera wrote:
> In the driver code there are 3 types of checks whether given
> VSI is main or not:
> 1. vsi->type ==/!= I40E_VSI_MAIN
> 2. vsi ==/!= pf->vsi[pf->lan_vsi]
> 3. vsi->seid ==/!= pf->vsi[pf->lan_vsi]->seid
> 
> All of them are equivalent and can be consolidated. Convert cases
> 2 and 3 to case 1.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

