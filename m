Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 248939D704
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 21:52:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD474875A9;
	Mon, 26 Aug 2019 19:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ciK9LcEQWMLP; Mon, 26 Aug 2019 19:52:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45189875BF;
	Mon, 26 Aug 2019 19:52:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B9B91BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 19:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 64B6B8817F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 19:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TurbGJY2DaGs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2019 19:52:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C37B088179
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 19:52:38 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id j4so31941490iog.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 12:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qRgVKGqDp7OmNQ2QZdWa4eMzbKt8AzPFFjWzUrb1OY4=;
 b=hgfWqaMPAdXDqQW6FsxJ+ZWN3fJF+wSh8NUDFSdhekoCF4bMVmGHFP/lMhP1wQn3WL
 DMtTMFQZndAFA+B/dMVy7VV0SM0nNx7VO59v2TdeGYChaGdp/BChIlJ+4cWZW1zSAEVg
 3m3J0sS4rs37Mddv5sqS6qsuZOck957yJ+8zqy/xXrdQKQ4i48O45N2tRoHZhqMS5bXr
 NZFTKiQdUcFkzTAxzbjf7Uz6Qu1GKnxVG9S/LcZe/oGEsD88xF2xK0v4x76h1InSSIk1
 oXTmWw6WL0rpGvLAMdj837YpnEwLdYTnvUcBImA3so1ry2dHy2zhf32rvZnKow5A2B7r
 +eXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qRgVKGqDp7OmNQ2QZdWa4eMzbKt8AzPFFjWzUrb1OY4=;
 b=R+dEQM6qxaBznlb7rxVKXtJ7rvLG/ZAXEbiEBMCyIzLF6RBn29hmc6NgnHd/wG0E6e
 iuMZNM9lCYbdtnimmhVD9ZSVaCNn2Rnq3KYerDIWZvDx38+6HSqQ8pFtrYFfHnsryu2b
 w6QuAT/9F1cS9VlO6PZPL8a9yx3g3S7UVAtQsqZdilI3DCrCMm0LFG0EX/XxJ3geDVLz
 2Kr2sJ4wNJNWPL4BjgYbHsjVgA8ZbcMay77oy0lO8LZ3BxJAhfUHg6x0ADvPZVHZPob3
 wN6Pm6Hm561t8NEONmEv92BtZxdIl6L+cBwzoxKXwtDyPE9nbIsDC64b5GZaIwqcBTmV
 D5ng==
X-Gm-Message-State: APjAAAWl6RX3VIoBk460SQPiA2oHJqW1TvnXJ/D3bi1389bmvXnOm6ZD
 oYmuchCfavw66LaRwrCqRW17va8faa2Zw/ThMXk=
X-Google-Smtp-Source: APXvYqyMAwvqs4MgaoZnlDFkHP/k1uDzzeiU8A83NEZVHdiHBH8xnEiLrwCFsgtAOsYNT5Nzw4xu7CeNSwWALSaD8Qg=
X-Received: by 2002:a5e:8c11:: with SMTP id n17mr4378951ioj.64.1566849157870; 
 Mon, 26 Aug 2019 12:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <0EF347314CF65544BA015993979A29CD8D2CAE01@irsmsx105.ger.corp.intel.com>
In-Reply-To: <0EF347314CF65544BA015993979A29CD8D2CAE01@irsmsx105.ger.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 26 Aug 2019 12:52:26 -0700
Message-ID: <CAKgT0UezbXFg2nVoyqgzsNq0x2jaDJBeZSnn6ZZbHE3b63ywvg@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: read flash with iomem=strict
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
Cc: "Ludkiewicz, Adam" <adam.ludkiewicz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 26, 2019 at 11:02 AM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
> From: Adam Ludkeiwicz <adam.ludkiewicz@intel.com>
>
> When Secure Boot is enabled access to the /dev/mem is forbidden for
> user-space applications and clients are reporting inability to use tools
> in Secure Boot Mode. The way to perform NVM update is to use igb driver.
> Currently 1G Linux Base Driver has API which allows only EEPROM access.
> There is a need to extend IOCTL API to allow NVM and registers access.
>
> Signed-off-by: Adam Ludkiewicz <adam.ludkiewicz@intel.com>

This patch is doing way too much for a single patch. If I am
understanding correctly this is granting both flash access AND
register access to tools through the NVM interface. That is generally
a big no-no. There is already an interface for providing register read
access. I would recommend going through that if you need to read
device registers. If some are missing you can extend that interface.
Also there is already an ethtool interface for writing a flash image.
You might be better off looking into that.

> ---
>
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index d2e2c50..68dee6a 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -481,6 +481,7 @@
> #define E1000_RAH_POOL_1 0x00040000
>
>  /* Error Codes */
> +#define E1000_SUCCESS      0
> #define E1000_ERR_NVM      1
> #define E1000_ERR_PHY      2
> #define E1000_ERR_CONFIG   3
> @@ -800,6 +801,37 @@
> #define NVM_ETS_DATA_INDEX_SHIFT   8
> #define NVM_ETS_DATA_HTHRESH_MASK            0x00FF
>
> +#define E1000_REGISTER_SET_SIZE                       0x20000 /* CSR Size */
> +#define E1000_FLA        0x0001C  /* Flash Access - RW */
> +#define E1000_FLOP     0x0103C  /* FLASH Opcode Register */
> +#define E1000_I350_BARCTRL                  0x5BFC /* BAR ctrl reg */
> +#define E1000_I350_DTXMXPKTSZ                         0x355C /* Maximum sent packet size reg*/
> +
> +#define E1000_SRWR                   0x12018
> +#define E1000_EEC_REG                            0x12010
> +
> +#define E1000_SHADOWINF                     0x12068
> +#define E1000_FLFWUPDATE     0x12108
> +
> +/* os dep */
> +#define E1000_READ_FLASH_REG(a, reg) (readl((a)->flash_address + (reg)))
> +
> +#define E1000_READ_FLASH_REG8(a, reg) ( \
> +             readb(READ_ONCE((a)->flash_address) + (reg)))
> +
> +#define E1000_WRITE_FLASH_REG(a, reg, value) ( \
> +             writel((value), ((a)->flash_address + (reg))))
> +
> +#define E1000_READ_REG(x, y) igb_rd32(x, y)
> +#define E1000_READ_REG8(h, r) readb(READ_ONCE((h)->hw_addr) + (r))
> +
> +#define E1000_WRITE_REG(hw, reg, val) \
> +do { \
> +             u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
> +             if (!E1000_REMOVED(hw_addr)) \
> +                            writel((val), &hw_addr[(reg)]); \
> +} while (0)
> +
> #define E1000_NVM_CFG_DONE_PORT_0  0x040000 /* MNG config cycle done */
> #define E1000_NVM_CFG_DONE_PORT_1  0x080000 /* ...for second port */
> #define E1000_NVM_CFG_DONE_PORT_2  0x100000 /* ...for third port */
> diff --git a/drivers/net/ethernet/intel/igb/e1000_hw.h b/drivers/net/ethernet/intel/igb/e1000_hw.h
> index 5d87957..ff034d2 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_hw.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_hw.h
> @@ -50,6 +50,19 @@
> #define E1000_DEV_ID_I354_SGMII                                       0x1F41
> #define E1000_DEV_ID_I354_BACKPLANE_2_5GBPS         0x1F45
>
> +/* NVM Update commands */
> +#define E1000_NVMUPD_CMD_REG_READ         0x0000000B
> +#define E1000_NVMUPD_CMD_REG_WRITE       0x0000000C
> +
> +/* NVM Update features API */
> +#define E1000_NVMUPD_FEATURES_API_VER_MAJOR                  0
> +#define E1000_NVMUPD_FEATURES_API_VER_MINOR                  0
> +#define E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN             12
> +#define E1000_NVMUPD_EXEC_FEATURES                                        0xE
> +#define E1000_NVMUPD_FEATURE_FLAT_NVM_SUPPORT                          BIT(0)
> +#define E1000_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT             BIT(1)
> +#define E1000_NVMUPD_MOD_PNT_MASK                                      0xFF
> +
> #define E1000_REVISION_2 2
> #define E1000_REVISION_4 4
>
> @@ -514,6 +527,21 @@
>               bool mas_capable;
> };
>
> +struct e1000_nvm_access {
> +             u32 command;
> +             u32 config;
> +             u32 offset;          /* in bytes */
> +             u32 data_size;    /* in bytes */
> +             u8 data[1];
> +};
> +
> +struct e1000_nvm_features {
> +             u8 major;
> +             u8 minor;
> +             u16 size;
> +             u8 features[E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN];
> +};
> +
> struct e1000_hw {
>               void *back;
>
> @@ -539,6 +567,8 @@
>               u16 vendor_id;
>
>                u8  revision_id;
> +                            /* NVM Update features */
> +             struct e1000_nvm_features nvmupd_features;
> };
>
>  struct net_device *igb_get_hw_dev(struct e1000_hw *hw);
> diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
> index 09f4dcb..0522e04 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
> +++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
> @@ -780,3 +780,17 @@
>                                             | eeprom_verl;
>               }
> }
> +
> +/* NVM Update features structure initialization */
> +void e1000_init_nvmupdate_features(struct e1000_hw *hw)
> +{
> +             hw->nvmupd_features.major = E1000_NVMUPD_FEATURES_API_VER_MAJOR;
> +             hw->nvmupd_features.minor = E1000_NVMUPD_FEATURES_API_VER_MINOR;
> +             hw->nvmupd_features.size = sizeof(hw->nvmupd_features);
> +             memset(hw->nvmupd_features.features, 0x0,
> +                    E1000_NVMUPD_FEATURES_API_FEATURES_ARRAY_LEN *
> +                    sizeof(*hw->nvmupd_features.features));
> +
> +             hw->nvmupd_features.features[0] =
> +                            E1000_NVMUPD_FEATURE_REGISTER_ACCESS_SUPPORT;
> +}

This is ugly. So you are adding a new protocol to allow register
access through the NVM update interface?

> diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.h b/drivers/net/ethernet/intel/igb/e1000_nvm.h
> index 091cddf..2f89b0b 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_nvm.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_nvm.h
> @@ -32,5 +32,6 @@
>               u16 or_patch;
> };
> void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_vers);
> +void e1000_init_nvmupdate_features(struct e1000_hw *hw);
>
>  #endif
> diff --git a/drivers/net/ethernet/intel/igb/e1000_regs.h b/drivers/net/ethernet/intel/igb/e1000_regs.h
> index 0ad737d..7d2ea56 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_regs.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_regs.h
> @@ -390,6 +390,7 @@
> #define E1000_O2BGPTC             0x08FE4 /* OS2BMC packets received by BMC */
> #define E1000_O2BSPC 0x0415C /* OS2BMC packets transmitted by host */
>
> +#define E1000_EEC_REG                            0x12010
> #define E1000_SRWR                    0x12018  /* Shadow Ram Write Register - RW */
> #define E1000_I210_FLMNGCTL 0x12038
> #define E1000_I210_FLMNGDATA            0x1203C
> @@ -398,6 +399,8 @@
> #define E1000_I210_FLSWCTL    0x12048
> #define E1000_I210_FLSWDATA 0x1204C
> #define E1000_I210_FLSWCNT   0x12050
> +#define E1000_SHADOWINF                     0x12068
> +#define E1000_FLFWUPDATE     0x12108
>
>  #define E1000_I210_FLA                             0x1201C
>
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index ca54e26..6a425c9 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -504,6 +504,7 @@
>               u16 link_duplex;
>
>                u8 __iomem *io_addr; /* Mainly for iounmap use */
> +             u8 __iomem *flash_addr;
>
>                struct work_struct reset_task;
>               struct work_struct watchdog_task;
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index c645d9e..0a82cf5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -712,10 +712,181 @@
>                              regs_buff[727 + i] = rd32(E1000_TDWBAH(i + 4));
> }
>
> +static u8 igb_nvmupd_get_module(u32 val)
> +{
> +             return (u8)(val & E1000_NVMUPD_MOD_PNT_MASK);
> +}
> +
> +static int igb_nvmupd_validate_offset(struct igb_adapter *adapter, u32 offset)
> +{
> +             if (offset >= E1000_REGISTER_SET_SIZE)
> +                            return 0;
> +
> +             switch (offset) {
> +             case E1000_CTRL:
> +             case E1000_STATUS:
> +             case E1000_EECD:
> +             case E1000_EERD:
> +             case E1000_CTRL_EXT:
> +             case E1000_FLA:
> +             case E1000_FLOP:
> +             case E1000_SWSM:
> +             case E1000_FWSM:
> +             case E1000_SW_FW_SYNC:
> +             case E1000_IOVTCL:
> +             case E1000_I350_BARCTRL:
> +             case E1000_THSTAT:
> +             case E1000_EEC_REG:
> +             case E1000_SRWR:
> +             case E1000_I210_FLA:
> +             case E1000_I210_FLSWCTL:
> +             case E1000_I210_FLSWDATA:
> +             case E1000_I210_FLSWCNT:
> +             case E1000_SHADOWINF:
> +             case E1000_FLFWUPDATE:
> +             case E1000_RAL(0):
> +             case E1000_RAL(1):
> +             case E1000_RAL(2):
> +             case E1000_RAL(3):
> +             case E1000_RAL(4):
> +             case E1000_RAL(5):
> +             case E1000_RAL(6):
> +             case E1000_RAL(7):
> +             case E1000_RAL(8):
> +             case E1000_RAL(9):
> +             case E1000_RAL(10):
> +             case E1000_RAL(11):
> +             case E1000_RAL(12):
> +             case E1000_RAL(13):
> +             case E1000_RAL(14):
> +             case E1000_RAL(15):
> +             case E1000_RAH(0):
> +             case E1000_RAH(1):
> +             case E1000_RAH(2):
> +             case E1000_RAH(3):
> +             case E1000_RAH(4):
> +             case E1000_RAH(5):
> +             case E1000_RAH(6):
> +             case E1000_RAH(7):
> +             case E1000_RAH(8):
> +             case E1000_RAH(9):
> +             case E1000_RAH(10):
> +             case E1000_RAH(11):
> +             case E1000_RAH(12):
> +             case E1000_RAH(13):
> +             case E1000_RAH(14):
> +             case E1000_RAH(15):
> +                            return 0;
> +             default:
> +                            dev_warn(&adapter->pdev->dev, "Bad offset: %x\n", offset);
> +                            return -ENOTTY;
> +             }
> +}
> +

This is just ugly. It makes not effort to distinguish between valid
registers for different silicon.

> +static int igb_nvmupd_command(struct e1000_hw *hw,
> +                                                 struct e1000_nvm_access *nvm,
> +                                                 u8 *bytes)
> +{
> +             struct igb_adapter *adapter = hw->back;
> +             resource_size_t bar0_len;
> +             int ret_val = 0;
> +             u32 command;
> +             u8 module;
> +
> +             bar0_len = pci_resource_len(adapter->pdev, 0);
> +             command = nvm->command;
> +             module = igb_nvmupd_get_module(nvm->config);
> +
> +             switch (command) {
> +             case E1000_NVMUPD_CMD_REG_READ:
> +                            switch (module) {
> +                            case E1000_NVMUPD_EXEC_FEATURES:
> +                                           if (nvm->data_size == hw->nvmupd_features.size)
> +                                                          memcpy(bytes, &hw->nvmupd_features,
> +                                                                 hw->nvmupd_features.size);
> +                                           else
> +                                                          ret_val = -ENOMEM;
> +                            break;
> +                            default:
> +                                           if (igb_nvmupd_validate_offset(adapter, nvm->offset))
> +                                                          return -ENOTTY;
> +                                           if (nvm->offset >= bar0_len) {
> +                                                          if (hw->mac.type == e1000_82576 &&
> +                                                              hw->flash_address) {
> +                                                                         u16 offset = nvm->offset - bar0_len;
> +
> +                                                                         if (nvm->data_size == 1)
> +                                                                                        *bytes =
> +                                                                                        E1000_READ_FLASH_REG8(hw,
> +                                                                                                                            offset);
> +                                                                         else
> +                                                                                        *((u32 *)bytes) =
> +                                                                                        E1000_READ_FLASH_REG(hw,
> +                                                                                                                           offset);
> +                                                          } else {
> +                                                                         ret_val = -EFAULT;
> +                                                          }
> +                                           } else if (nvm->data_size == 1) {
> +                                                          *bytes = E1000_READ_REG8(hw, nvm->offset);
> +                                           } else {
> +                                                          *((u32 *)bytes) = E1000_READ_REG(hw,
> +                                                                                                                      nvm->offset);
> +                                           }
> +                            break;
> +                            }
> +             break;
> +             case E1000_NVMUPD_CMD_REG_WRITE:
> +                            if (igb_nvmupd_validate_offset(adapter, nvm->offset))
> +                                           return -ENOTTY;
> +                            if (nvm->offset >= bar0_len) {
> +                                           if (hw->mac.type == e1000_82576 && hw->flash_address)
> +                                                          E1000_WRITE_FLASH_REG(hw,
> +                                                                                              nvm->offset - bar0_len,
> +                                                                                              *((u32 *)bytes));
> +                                           else
> +                                                          ret_val = -EFAULT;
> +                            } else {
> +                                           E1000_WRITE_REG(hw, nvm->offset, *((u32 *)bytes));
> +                            }

Okay, so this is an obvious backdoor interface to get into the device.
I really don't think you should be doing this.

> +             break;
> +             }
> +
> +             return ret_val;
> +}
> +
> static int igb_get_eeprom_len(struct net_device *netdev)
> {
>               struct igb_adapter *adapter = netdev_priv(netdev);
> -              return adapter->hw.nvm.word_size * 2;
> +             struct pci_dev *pdev = adapter->pdev;
> +
> +             if (adapter->hw.mac.type == e1000_82576)
> +                            return pci_resource_len(pdev, 0) + pci_resource_len(pdev, 1);
> +             else
> +                            return pci_resource_len(pdev, 0);
> +}

This isn't returning the EEPROM length. This seems to be returning the
size of your MMIO register space.

> +
> +s32 e1000_read_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
> +{
> +             if (hw->nvm.ops.read)
> +                            return hw->nvm.ops.read(hw, offset, words, data);
> +
> +             return -E1000_ERR_CONFIG;
> +}
> +
> +s32 e1000_write_nvm(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
> +{
> +             if (hw->nvm.ops.write)
> +                            return hw->nvm.ops.write(hw, offset, words, data);
> +
> +             return E1000_SUCCESS;
> +}
> +
> +s32 e1000_update_nvm_checksum(struct e1000_hw *hw)
> +{
> +             if (hw->nvm.ops.update)
> +                            return hw->nvm.ops.update(hw);
> +
> +             return -E1000_ERR_CONFIG;
> }

Do you really need all of these? It seems like this is something where
it will either exist or not so you could probably have one check at
the start of the function to see if the NVM functions are present or
not and then make use of these calls.

>
>  static int igb_get_eeprom(struct net_device *netdev,
> @@ -726,11 +897,21 @@
>               u16 *eeprom_buff;
>               int first_word, last_word;
>               int ret_val = 0;
> +             struct e1000_nvm_access *nvm;
> +             u32 magic;
>               u16 i;
>
>                if (eeprom->len == 0)
>                              return -EINVAL;
>
> +             magic = hw->vendor_id | (hw->device_id << 16);
> +             if (eeprom->magic && eeprom->magic != magic) {
> +                            nvm = (struct e1000_nvm_access *)eeprom;
> +                            ret_val = igb_nvmupd_command(hw, nvm, bytes);
> +                            return ret_val;
> +             }
> +
> +             /* normal ethtool get_eeprom support */
>               eeprom->magic = hw->vendor_id | (hw->device_id << 16);
>
>                first_word = eeprom->offset >> 1;
> @@ -742,13 +923,13 @@
>                              return -ENOMEM;
>
>                if (hw->nvm.type == e1000_nvm_eeprom_spi)
> -                             ret_val = hw->nvm.ops.read(hw, first_word,
> -                                                                             last_word - first_word + 1,
> -                                                                             eeprom_buff);
> +                            ret_val = e1000_read_nvm(hw, first_word,
> +                                                                         last_word - first_word + 1,
> +                                                                         eeprom_buff);
>               else {
>                              for (i = 0; i < last_word - first_word + 1; i++) {
> -                                            ret_val = hw->nvm.ops.read(hw, first_word + i, 1,
> -                                                                                            &eeprom_buff[i]);
> +                                           ret_val = e1000_read_nvm(hw, first_word + i, 1,
> +                                                                                        &eeprom_buff[i]);
>                                             if (ret_val)
>                                                            break;
>                              }

Do you really need to replace these functions? It seems like this is
an unnecessary change to force this into using a new interface that
isn't needed.

> @@ -773,6 +954,8 @@
>               u16 *eeprom_buff;
>               void *ptr;
>               int max_len, first_word, last_word, ret_val = 0;
> +             struct e1000_nvm_access *nvm;
> +             u32 magic;
>               u16 i;
>
>                if (eeprom->len == 0)
> @@ -783,6 +966,14 @@
>                              return -EOPNOTSUPP;
>               }
>
> +             magic = hw->vendor_id | (hw->device_id << 16);
> +             if (eeprom->magic && eeprom->magic != magic) {
> +                            nvm = (struct e1000_nvm_access *)eeprom;
> +                            ret_val = igb_nvmupd_command(hw, nvm, bytes);
> +                            return ret_val;
> +             }
> +
> +             /* normal ethtool get_eeprom support */
>               if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
>                              return -EFAULT;
>
> @@ -800,16 +991,16 @@
>                              /* need read/modify/write of first changed EEPROM word
>                               * only the second byte of the word is being modified
>                               */
> -                             ret_val = hw->nvm.ops.read(hw, first_word, 1,
> -                                                                              &eeprom_buff[0]);
> +                            ret_val = e1000_read_nvm(hw, first_word, 1,
> +                                                                         &eeprom_buff[0]);
>                              ptr++;
>               }
>               if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {
>                              /* need read/modify/write of last changed EEPROM word
>                               * only the first byte of the word is being modified
>                               */
> -                             ret_val = hw->nvm.ops.read(hw, last_word, 1,
> -                                                              &eeprom_buff[last_word - first_word]);
> +                            ret_val = e1000_read_nvm(hw, last_word, 1,
> +                                                                         &eeprom_buff[last_word - first_word]);
>               }
>
>                /* Device's eeprom is always little-endian, word addressable */
> @@ -821,12 +1012,14 @@
>               for (i = 0; i < last_word - first_word + 1; i++)
>                              eeprom_buff[i] = cpu_to_le16(eeprom_buff[i]);
>
> -              ret_val = hw->nvm.ops.write(hw, first_word,
> -                                                               last_word - first_word + 1, eeprom_buff);
> +             ret_val = e1000_write_nvm(hw, first_word,
> +                                                            last_word - first_word + 1, eeprom_buff);

More unnecessary replacement. If it worked before why add unnecessary
checks for a NULL pointer?

> -              /* Update the checksum if nvm write succeeded */
> +             /* Update the checksum if write succeeded.
> +             * and flush shadow RAM for 82573 controllers
> +             */
>               if (ret_val == 0)
> -                             hw->nvm.ops.update(hw);
> +                            e1000_update_nvm_checksum(hw);
>
>                igb_set_fw_version(adapter);
>               kfree(eeprom_buff);
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 39f33af..dbbcda3 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3095,6 +3095,7 @@
>               memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
>               memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));
>               memcpy(&hw->nvm.ops, ei->nvm_ops, sizeof(hw->nvm.ops));
> +             e1000_init_nvmupdate_features(hw);
>               /* Initialize skew-specific constants */
>               err = ei->get_invariants(hw);
>               if (err)

You might want to wait on calling your nvmupdate function until after
you have dealt with any skew-specific values that need to be
populated.

> @@ -3106,6 +3107,15 @@
>                              goto err_sw_init;
>
>                igb_get_bus_info_pcie(hw);
> +
> +             /* 82576 accesses flash differently */
> +             if (adapter->hw.mac.type == e1000_82576) {
> +                            adapter->flash_addr = ioremap(pci_resource_start(pdev, 1),
> +                                                                               pci_resource_len(pdev, 1));
> +                            if (!adapter->flash_addr)
> +                                           dev_warn(&pdev->dev, "Flash address mapping failed.");
> +                            hw->flash_address = adapter->flash_addr;
> +             }

From what I can tell this is the only path that sets flash_address in
the driver. Why add a new variable to store it in the adapter struct,
why not just stick with the hw->flash_address value?

>                hw->phy.autoneg_wait_to_complete = false;
>
> @@ -3475,6 +3485,8 @@
>               igb_disable_sriov(pdev);
> #endif
>               pci_iounmap(pdev, adapter->io_addr);
> +             if (adapter->flash_addr)
> +                            pci_iounmap(pdev, adapter->flash_addr);
> err_ioremap:
>               free_netdev(netdev);
> err_alloc_etherdev:
> @@ -3674,10 +3686,12 @@
>               unregister_netdev(netdev);
>
>                igb_clear_interrupt_scheme(adapter);
> -
> -              pci_iounmap(pdev, adapter->io_addr);
> -              if (hw->flash_address)
> -                             iounmap(hw->flash_address);
> +             if (adapter->io_addr)
> +                            pci_iounmap(pdev, adapter->io_addr);

You shouldn't need this check. It was either mapped or it wasn't. If
it wasn't you shouldn't be able to get here since the driver probe
should have failed.

> +             if (adapter->flash_addr)
> +                            pci_iounmap(pdev, adapter->flash_addr);
> +             if (hw->flash_address && hw->flash_address != adapter->flash_addr)
> +                            pci_iounmap(pdev, hw->flash_address);

What is the liklihood of these two values ever being different? You
could probably just leave this code as is assuming that
hw->flash_address is essentially the same as it was before.

>               pci_release_mem_regions(pdev);
>
>                kfree(adapter->mac_table);
>
> --------------------------------------------------------------------
>
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
>
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
> przegladanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
> others is strictly prohibited.
>
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
