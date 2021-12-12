Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 500F94719E0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Dec 2021 12:47:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C145F60E55;
	Sun, 12 Dec 2021 11:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RVtYw53EE7Bc; Sun, 12 Dec 2021 11:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F8826073D;
	Sun, 12 Dec 2021 11:47:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8BFA1BF393
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 11:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FC7B426FA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 11:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9VASIaHbono for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Dec 2021 11:47:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2521426F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 11:47:48 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id DC49F5801BD;
 Sun, 12 Dec 2021 06:47:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 12 Dec 2021 06:47:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=i68MDK
 OYZX2L9llnoC4vHRarKh+UThKV0LjDM1g07oQ=; b=WWTaJ1GlXONzJOmCl9jtBJ
 UlLm8ZGJPtay2MOsaLg//hvfIixS1FkreC9+VQ0iq9N5hTqrSI7GMtcAmhDYdXk9
 hceH7qVeRdKj+sv5bKJEJx6S0Cxvmg7VCYZSOPe/Hhmytu8Ihx+sibjZ4s/MMj7i
 /YPRcTpWLnj8c6ca6LtZkSmJLzwTnGTNzZUirQbu0fQUKkGelmwfxh2L916hRR06
 t46mXPLEEKPoHeW7k4drW5wCNyeB281aMEkmqbuU1Y3pMPm8DjvJwgYBNG5QkhjU
 sOXgC2PdM0g2qzZZwI6mQHO6Ab6mDW542+hqaTOf5yUkCIa3SNckaAxtFtUEV7xQ
 ==
X-ME-Sender: <xms:YeG1YXMNwpUn57dofbEG3zB1q9TrtLHCfDxRk-K2iXBbMgCuocvP3Q>
 <xme:YeG1YR8or4MOq2d2C9voM3k_pJEA0ax5TtoL5lAYUTamOve54j1GByn1SCWnsxTsM
 OAh6-C4GDFDOBU>
X-ME-Received: <xmr:YeG1YWRHlEVLA5oG5jsbsOXIqFAu86wryeUEIW-8LD_g7OrZxbR0zzzvSXS5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeeigdefvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:YeG1YbupWaUEWO5JIPN-b0TeibR3tR5Uz348pnFfO9CfOmzz7NQIsg>
 <xmx:YeG1YfcKU9RsVJgV3uyS03dG5K9jTJtOyQruSb5foxxK5KGxBhvmEw>
 <xmx:YeG1YX0x0NGiyJIecJpgR-XfMirfwFNDGdQ2e5pGVFEWeQjuwFcK5w>
 <xmx:YeG1YX2deXHOhMO9tPxp92PslBPfQo2ZNObbxto-p3njfMb96p0yhg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Dec 2021 06:47:44 -0500 (EST)
Date: Sun, 12 Dec 2021 13:47:42 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YbXhXstRpzpQRBR8@shredder>
References: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/4] Add ethtool interface
 for RClocks
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, saeed@kernel.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 10, 2021 at 02:45:46PM +0100, Maciej Machnikowski wrote:
> Synchronous Ethernet networks use a physical layer clock to syntonize
> the frequency across different network elements.
> 
> Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
> Equipment Clock (EEC) and have the ability to synchronize to reference
> frequency sources.
> 
> This patch series is a prerequisite for EEC object and adds ability
> to enable recovered clocks in the physical layer of the netdev object.
> Recovered clocks can be used as one of the reference signal by the EEC.

The dependency is the other way around. It doesn't make sense to add
APIs to configure the inputs of an object that doesn't exist. First add
the EEC object, then we can talk about APIs to configure its inputs from
netdevs.

With these four patches alone, user space doesn't know how many EECs
there are in the system, it doesn't know the mapping from netdev to EEC,
it doesn't know the state of the EEC, it doesn't know which source is
chosen in case more than one source is enabled. Patch #3 tries to work
around it by having ice print to kernel log, when the information should
really be exposed via the EEC object.

+		dev_warn(ice_pf_to_dev(pf),
+			 "<DPLL%i> state changed to: %d, pin %d",
+			 ICE_CGU_DPLL_SYNCE,
+			 pf->synce_dpll_state,
+			 pin);

> 
> Further work is required to add the DPLL subsystem, link it to the
> netdev object and create API to read the EEC DPLL state.

When the EEC object materializes, we might find out that this API needs
to be changed / reworked / removed, but we won't be able to do that
given it's uAPI. I don't know where the confidence that it won't happen
stems from when there are so many question marks around this new
object.

> 
> v5:
> - rewritten the documentation
> - fixed doxygen headers
> 
> v4:
> - Dropped EEC_STATE reporting (TBD: DPLL subsystem)
> - moved recovered clock configuration to ethtool netlink
> 
> v3:
> - remove RTM_GETRCLKRANGE
> - return state of all possible pins in the RTM_GETRCLKSTATE
> - clarify documentation
> 
> v2:
> - improved documentation
> - fixed kdoc warning
> 
> RFC history:
> v2:
> - removed whitespace changes
> - fix issues reported by test robot
> v3:
> - Changed naming from SyncE to EEC
> - Clarify cover letter and commit message for patch 1
> v4:
> - Removed sync_source and pin_idx info
> - Changed one structure to attributes
> - Added EEC_SRC_PORT flag to indicate that the EEC is synchronized
>   to the recovered clock of a port that returns the state
> v5:
> - add EEC source as an optiona attribute
> - implement support for recovered clocks
> - align states returned by EEC to ITU-T G.781
> v6:
> - fix EEC clock state reporting
> - add documentation
> - fix descriptions in code comments
> 
> 
> Maciej Machnikowski (4):
>   ice: add support detecting features based on netlist
>   ethtool: Add ability to configure recovered clock for SyncE feature
>   ice: add support for monitoring SyncE DPLL state
>   ice: add support for recovered clocks
> 
>  Documentation/networking/ethtool-netlink.rst  |  62 ++++
>  drivers/net/ethernet/intel/ice/ice.h          |   7 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  70 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 224 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  20 +-
>  drivers/net/ethernet/intel/ice/ice_devids.h   |   3 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  96 +++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  35 +++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  49 ++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  36 +++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  include/linux/ethtool.h                       |   9 +
>  include/uapi/linux/ethtool_netlink.h          |  21 ++
>  net/ethtool/Makefile                          |   3 +-
>  net/ethtool/netlink.c                         |  20 ++
>  net/ethtool/netlink.h                         |   4 +
>  net/ethtool/synce.c                           | 267 ++++++++++++++++++
>  18 files changed, 929 insertions(+), 4 deletions(-)
>  create mode 100644 net/ethtool/synce.c
> 
> -- 
> 2.26.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
