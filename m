Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B832917A8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Oct 2020 15:49:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 948768775F;
	Sun, 18 Oct 2020 13:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdluticK2ugF; Sun, 18 Oct 2020 13:49:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8F068775B;
	Sun, 18 Oct 2020 13:48:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDA7E1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 13:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8DFF867B2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 13:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bOq4pTC-g8qw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Oct 2020 13:48:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A5E5867A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 13:48:57 +0000 (UTC)
IronPort-SDR: a2fkEeab6NgE8ZZVBRp44PjKfuMCEqQwyny8NeCLj2MyxQSdLMwDAI0fisaSB3bYVuvjgu2dJ3
 hIkpUwPk7sww==
X-IronPort-AV: E=McAfee;i="6000,8403,9777"; a="251594782"
X-IronPort-AV: E=Sophos;i="5.77,391,1596524400"; d="scan'208";a="251594782"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 06:48:52 -0700
IronPort-SDR: pp7PfR0d4kl9846foObBfkKhIKwHbdo0bNigheNIqNCoMKqjOQMtiSg/n+hMy7E6SURyWRU6jv
 PKKgzJAgN5Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,391,1596524400"; d="scan'208";a="522828696"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga005.fm.intel.com with ESMTP; 18 Oct 2020 06:48:49 -0700
Date: Sun, 18 Oct 2020 15:39:51 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: sven.auhagen@voleatech.de
Message-ID: <20201018133951.GB34104@ranger.igk.intel.com>
References: <20201017071238.95190-1-sven.auhagen@voleatech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201017071238.95190-1-sven.auhagen@voleatech.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 0/6] igb: xdp patches followup
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, davem@davemloft.net,
 sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 17, 2020 at 09:12:32AM +0200, sven.auhagen@voleatech.de wrote:
> From: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> This patch series addresses some of the comments that came back
> after the igb XDP patch was accepted.
> Most of it is code cleanup.
> The last patch contains a fix for a tx queue timeout
> that can occur when using xdp.
> 
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>

Sorry for not getting back at v1 discussion, I took some time off.

For the series:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Couple nits:
- you don't need SOB line within cover letter, I suppose
- next time please specify the tree in the subject that you're targetting
  this set to land; is it net or net-next? net-next is currently closed so
  you probably would have to come back with this once it will be open
  again
- SOB line should be at the end of tags within commit message of patch;
  I'm saying 'should' because I'm not sure if it's hard requirement.

> 
> Change from v1:
>     * Drop patch 5 as the igb_rx_frame_truesize won't match
>     * Fix typo in comment
>     * Add Suggested-by and Reviewed-by tags
>     * Add how to avoid transmit queue timeout in xdp path
>       is fixed in the commit message
> 
> Sven Auhagen (6):
>   igb: XDP xmit back fix error code
>   igb: take vlan double header into account
>   igb: XDP extack message on error
>   igb: skb add metasize for xdp
>   igb: use xdp_do_flush
>   igb: avoid transmit queue timeout in xdp path
> 
>  drivers/net/ethernet/intel/igb/igb.h      |  5 ++++
>  drivers/net/ethernet/intel/igb/igb_main.c | 32 +++++++++++++++--------
>  2 files changed, 26 insertions(+), 11 deletions(-)
> 
> -- 
> 2.20.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
