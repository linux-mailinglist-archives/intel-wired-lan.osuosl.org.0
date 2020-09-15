Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4839426A6AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 16:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5A3085608;
	Tue, 15 Sep 2020 14:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xx+clIoISu-2; Tue, 15 Sep 2020 14:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4446985693;
	Tue, 15 Sep 2020 14:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECFE91BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E827D8638F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ih-fohyvzbjw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 09:06:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8BFA86357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:06:31 +0000 (UTC)
IronPort-SDR: e+zt3ryoG9vmVI/vzstOVvocZVMi5CIjs62oQTwAG42EbFjCMMk6yt2IiWI/k97VCJsjIOOIzG
 T4Q5muHnkTyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="160157788"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="160157788"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 02:06:31 -0700
IronPort-SDR: JN6muYTQqB3wm3kCXqk1xsORqKL94poqyPOQLwwV9SSOFBG1M/RLedvNq9ruyR1KSefDfAWvPJ
 brvH/uTc728w==
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="482690707"
Received: from emoriart-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.7.208])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 02:06:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>,
 Jiri Kosina <trivial@kernel.org>
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
Date: Tue, 15 Sep 2020 12:06:21 +0300
Message-ID: <87d02nxvci.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 15 Sep 2020 14:01:56 +0000
Subject: Re: [Intel-wired-lan] [Intel-gfx] [trivial PATCH] treewide: Convert
 switch/case fallthrough; to break; 
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
Cc: linux-fbdev@vger.kernel.org, oss-drivers@netronome.com,
 nouveau@lists.freedesktop.org, alsa-devel <alsa-devel@alsa-project.org>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-rtc@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, dccp@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 kvmarm@lists.cs.columbia.edu, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 Kees Cook <kees.cook@canonical.com>, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
 storagedev@microchip.com, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-sctp@vger.kernel.org, iommu@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 09 Sep 2020, Joe Perches <joe@perches.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 5ac0dbf0e03d..35ac539cc2b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2861,7 +2861,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		if (!gen12_plane_supports_mc_ccs(dev_priv, plane->id))
>  			return false;
> -		fallthrough;
> +		break;
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging via whichever tree seems best.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
