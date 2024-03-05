Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFEE8715E1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 07:30:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9801041525;
	Tue,  5 Mar 2024 06:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XB3zWymNTge2; Tue,  5 Mar 2024 06:30:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6A10414F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709620202;
	bh=LzgR5l8CC9Q1jk88BjlSSwNUxoZBB6oz2lkmwI6wm/0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AwSdBy/iAuekLCLBxoayZJFKv23GMPvZ1H4RlctoHFQWUAhQUDRzX3ofE4EXvqRD2
	 iFI9NRri00F20QVOoqlkGNoxshqUlncPUlNagIeIYN5mrp/U7mXrexad0/3cOzpOiB
	 azkWz8URt8GU+7ImvaQV/o4nX0E0tM3Zt2TZaogCYv20iqUTfqSD2J1oaFCWAmRmOC
	 JLS2c1xfzVd2AkKxLuf30FP+Sh1oKM0ekAg7Uy2+EyOsDTY+cryI9dD+vP/sB4S14n
	 0mf5LePmkip9jqeRGAFR389Hyf1IruZqVuwyd0pudp6aSNZnqG9Apd1yY87jJn7dby
	 Ol8XA/e/Z8jfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6A10414F1;
	Tue,  5 Mar 2024 06:30:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5CA61BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 06:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C12DC4067E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 06:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Bt2wjBAKknL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 06:29:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 49FC740678
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49FC740678
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49FC740678
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 06:29:56 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af0e0.dynamic.kabel-deutschland.de
 [95.90.240.224])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5D16F61E5FE01;
 Tue,  5 Mar 2024 07:28:58 +0100 (CET)
Message-ID: <38f55ddc-a991-45e5-b32e-941ab7f3c0bc@molgen.mpg.de>
Date: Tue, 5 Mar 2024 07:28:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240304230845.14934-1-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240304230845.14934-1-jesse.brandeburg@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix bug with suspend
 and rebuild
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
Cc: Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jesse,


Thank you for your patch.

Am 05.03.24 um 00:08 schrieb Jesse Brandeburg:
> The ice driver would previously panic during suspend. This is caused
> from the driver *only* calling the ice_vsi_free_q_vectors() function by
> itself, when it is suspending. Since commit b3e7b3a6ee92 ("ice: prevent
> NULL pointer deref during reload") the driver has zeroed out
> num_q_vectors, and only restored it in ice_vsi_cfg_def().
> 
> This further causes the ice_rebuild() function to allocate a zero length
> buffer, after which num_q_vectors is updated, and then the new value of
> num_q_vectors is used to index into the zero length buffer, which
> corrupts memory.

[…]

For the commit message summary I suggest to be more specific. Maybe:

ice: Fix memory corruption with suspend and rebuild

ice: Avoid 0-length buffer to fix memory corruption with suspend/rebuild


Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
