Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E40B2DE379
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 14:50:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D498487642;
	Fri, 18 Dec 2020 13:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SX9+3oRe3Dtm; Fri, 18 Dec 2020 13:50:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B19287094;
	Fri, 18 Dec 2020 13:50:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98E041BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 13:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C7EB87637
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 13:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNPXET4OACEz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 13:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F34A786F81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 13:50:01 +0000 (UTC)
IronPort-SDR: wUixcTRMpracnxuDdNsjRYAdyqBapSTbe9mr2wuAJg34ZcWSFiBR2Zmh/83vBtom0HpAtPNJ5N
 ZSqaUcoOebRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="154660674"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="154660674"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 05:50:01 -0800
IronPort-SDR: +OR6Gl8PZK1u7R9CrHwWCwFcTIvTsL7SFRQe24SfXVLCv0uDJYMwks+5UPoxpCBJ6oDSvMui/Q
 khOFv+jvjD4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="393741231"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Dec 2020 05:50:00 -0800
Date: Fri, 18 Dec 2020 14:40:04 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20201218134004.GA39364@ranger.igk.intel.com>
References: <20201218103608.4359-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218103608.4359-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v4 0/2] Flow director support for
 IPv6 and VLAN field
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 18, 2020 at 10:36:08AM +0000, Mateusz Palczewski wrote:
> This series focuses on adding flow director for both IPv6 support and
> VLAN field.
> 
> Patch 1/2 focuses on implementing a flow director support for IPv6 by
> adding packet templates, handlers and refactoring the code to make it
> more generic.
> 
> Patch 2/2 allows user to specify VLAN field and add it to flow
> director by showing vlan field in "ethtool -n ethx" command. It also
> refactors static static arrays with runtime dummy packet creation.
> 
> v4: Changed the name of patch series to keep the upstream integrity

Keep the whole history of revision changes. Also, in patch descriptions
you have a 'v2' change but it's v4 right now.

> 
> Przemyslaw Patynowski (2):
>   i40e: Add flow director support for IPv6
>   i40e: VLAN field for flow director
> 
>  drivers/net/ethernet/intel/i40e/i40e.h        |  11 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 239 +++++++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  79 ++-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 534 +++++++++++-------
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |   2 +
>  5 files changed, 647 insertions(+), 218 deletions(-)
> 
> -- 
> 2.17.1
> 
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
> Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
>  
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
